
/****************************************
 *  chaser-man
 *****************************************/

#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stdint.h>
#include <bcm2835.h>
#include <string.h>
#include<signal.h>

//CAMERA address
#define DEVICE_ADDRESS 0x58

//PIN FOR LEDS

//GPIO7 - pin26
#define  YELLOW_LED RPI_V2_GPIO_P1_26
//GPIO8 - pin24
#define  GREEN_LED RPI_V2_GPIO_P1_24
//GPIO11- pin23
#define  WHITE_LED RPI_V2_GPIO_P1_23
//GPIO25 - pin22 for detection of wiimotee camera
#define  RED_LED RPI_V2_GPIO_P1_22


//PIN FOR BUTTONS (FROM UP TO DOWN)

//GPIO22 - PIN15 (BLACK BUTTON UP, used for shutdown command)
#define FIRST_BUTTON_BLACK RPI_V2_GPIO_P1_15
//GPIO27 - PIN13 (RED BUTTON, enable/disable video recording)
#define SECOND_BUTTON_RED RPI_V2_GPIO_P1_13
//GPIO17 - PIN11 (BLACK BUTTON DOWN, enable/disable vertical motor driving)
#define THIRD_BUTTON_BLACK RPI_V2_GPIO_P1_11

#define MINPOSX 10
#define MAXPOSX 220
#define MINPOSY 100
#define MAXPOSY 200
#define INITPOSX 100
//#define INITPOSX 115 
#define INITPOSY 130
#define STOPSERVO 0

#define TRUE 1
#define FALSE 0

//new structure type for all wiimote camera points 
/***********************/
struct ir_point{
int x;
int y;
int s;
};

typedef struct{
struct ir_point p1;
struct ir_point p2;
struct ir_point p3;
struct ir_point p4;
}t_points;
/**********************/

//new t_points declaration
t_points points;

//fd declaration for i2c bus
int i2c_fd;

//old pos x
int global_pos_servo_x =  INITPOSX;
int  global_pos_servo_y = INITPOSY;

int in_shutdown = FALSE; //TRUE start shutdown
int video_mode = FALSE; // false video stop and true video on
int servo_mode = FALSE; // FALSE  (x ok and y ok) - TRUE (x ok and y stop)

int init();
void shutdown(int old_pos_x,int old_pos_y);
void reset_pos_servo(int type, int old_pos_x,int old_pos_y);
void set_output_pin();
void set_input_pin();
uint8_t read_pin_status(int pin);
void set_pin_high(int pin);
void set_pin_low(int pin);
void wait_a_bit();
void init_wiicamera_registers();
void detect_ir_led();
void move_servo(int num_servo,int value);
int calculates_position(int *diff1,int *diff2, int *old_point_p1_x, int *old_point_p1_y,
             int *old_pos_servo_x, int *old_pos_servo_y,t_points points,int *pos_servo_x,int *pos_servo_y);

void led_red_on();
void led_red_off();
void led_yellow_on();
void led_yellow_off();
void led_white_on();
void led_white_off();
void led_green_on();
void led_green_off();

void sig_handler(int signo)
{
  if (signo == SIGINT)
    printf("received SIGINT\n");
    reset_pos_servo(1,global_pos_servo_x,global_pos_servo_y);			// Attenzione bisogna passare la posizione attuale dei servo alla funzione
    close(i2c_fd);
    bcm2835_close();
   // sleep(1);
   // system("sudo killall servod");
    exit;
}

void  onoff(int type, int last_pos_servo_x, int last_pos_servo_y){
	//reset_pos_servo();
        //led_yellow_off();
	led_green_on();
       // reset_pos_servo();
        sleep(1);
        led_green_off();
        led_white_on();
    //    reset_pos_servo();
        sleep(1);
        //led_white_off();
        led_white_off();
	led_green_on();
	
        reset_pos_servo(type,last_pos_servo_x,last_pos_servo_y);
        sleep(1);
	led_green_off();
	led_white_on();
	sleep(1);
	led_white_off();
        //led_red_off();
}


int is_detected_ir(int x,int y, int s){
	if(x==1023 && y==1023 && s==255){
		led_red_off();
		return FALSE;
	}
	else{	led_red_on();
		return TRUE;
	}
}

void move_servo(int num_servo,int value){
	char str[256];
	char n[4];
	char v[4];
	snprintf(n, sizeof(n), "%d", num_servo);
	snprintf(v, sizeof(v), "%d", value);
	strcpy(str,"sudo echo ");strcat(str,n);
	strcat(str,"=");strcat(str,v);
	strcat(str," > /dev/servoblaster");
	printf("cmd servo:-->  %s\n",str);
	system(str);
}


/*void move_servo(int num_servo, int value)
{
   char buf[32];
   int fd;
 
       sprintf(buf, "%d=%d\n", num_servo,value);
	printf("muovo servo in %d=%d",num_servo,value);
       if ((fd = open("/dev/servoblaster", O_WRONLY)) >= 0) {
          int n = strlen(buf);
          if (write(fd, buf, n) != n)
             fprintf(stderr, "Failed to set %s: %s\n", buf);
          close(fd);
	sleep(0.5);
       } else {
          fprintf(stderr, "Failed to open servoblaster\n");
		sleep(0.5);
       }
  
}
*/

void led_green_on(){
	set_pin_high(GREEN_LED);
}

void led_green_off(){
	set_pin_low(GREEN_LED);
}
void led_red_on(){
        set_pin_high(RED_LED);
}

void led_red_off(){
        set_pin_low(RED_LED);
}
void led_yellow_on(){
        set_pin_high(YELLOW_LED);
}

void led_yellow_off(){
        set_pin_low(YELLOW_LED);
}
void led_white_on(){
        set_pin_high(WHITE_LED);
}

void led_white_off(){
        set_pin_low(WHITE_LED);
}


void reset_pos_servo(int type,int last_pos_x, int last_pos_y){
	
	int x=last_pos_x;
	int y=0;
       // printf("Parking camera from x=%d,y=%d to x=100,y=220\n",global_pos_servo_x,global_pos_servo_y);
	if(type==0) y=220;
	else y = last_pos_y;
        while(1){
		if(type==0){ 	//se è avvio sposto solo y
			
			if(y>130){ move_servo(5,y--);}
			else break;
		}else{
			if(x>100){
				move_servo(6,x--);
			}else 
				if (x<100){
					move_servo(6,x++);
				}
			
			if(y>220){
				move_servo(5,y--);
				}
			else
				if(y<220){
					move_servo(5,y++);
			
			}
			printf("x:%d, y:%d\n",x,y);
			//if(x==100 && y==220){printf("esco"); break;}
			if(x==100 && y==220){printf("esco\n"); break;}

		}

	}
	move_servo(6,0);	// disattiva motore
	move_servo(5,0);	// disattiva motore
}


int init(){
	if(bcm2835_init()){
		system("sudo /home/pi/PiBits/ServoBlaster/servod --p1pins=0,0,0,0,16,18");
		
		set_output_pin();
		set_input_pin();
		onoff(0,0,0);
		init_wiicamera_registers();
		printf("init ok...\n");
		sleep(2);
        	return 1;
	}
	else{
		perror("init error! exit..\n");
		return -1;
	}

}

void set_output_pin(){
	 
	bcm2835_gpio_fsel(YELLOW_LED, BCM2835_GPIO_FSEL_OUTP);
	bcm2835_gpio_write(YELLOW_LED, LOW);
	bcm2835_gpio_fsel(GREEN_LED, BCM2835_GPIO_FSEL_OUTP);
	bcm2835_gpio_write(GREEN_LED, LOW);
	bcm2835_gpio_fsel(WHITE_LED, BCM2835_GPIO_FSEL_OUTP);
	bcm2835_gpio_write(WHITE_LED, LOW);
	bcm2835_gpio_fsel(RED_LED, BCM2835_GPIO_FSEL_OUTP);
	bcm2835_gpio_write(RED_LED, LOW);
	printf("set output pin ok...\n");
}

void set_input_pin(){
	bcm2835_gpio_fsel(FIRST_BUTTON_BLACK, BCM2835_GPIO_FSEL_INPT);
	bcm2835_gpio_set_pud(FIRST_BUTTON_BLACK, BCM2835_GPIO_PUD_DOWN);
	//wait_a_bit();
	bcm2835_gpio_fsel(SECOND_BUTTON_RED, BCM2835_GPIO_FSEL_INPT);
	//wait_a_bit();
	bcm2835_gpio_set_pud(SECOND_BUTTON_RED, BCM2835_GPIO_PUD_DOWN);
	bcm2835_gpio_fsel(THIRD_BUTTON_BLACK, BCM2835_GPIO_FSEL_INPT);
	//wait_a_bit();
	bcm2835_gpio_set_pud(THIRD_BUTTON_BLACK, BCM2835_GPIO_PUD_DOWN);
	printf("set input pin ok...\n");
}


uint8_t read_pin_status(int pin){
	uint8_t value = bcm2835_gpio_lev(pin);
        printf("read from pin %d: %d\n",pin,value);
	return value;
}

uint8_t status_button_shutdown(){
	return read_pin_status(FIRST_BUTTON_BLACK);
}

uint8_t status_button_video(){
	return read_pin_status(SECOND_BUTTON_RED);
}

uint8_t status_button_servo(){
	return read_pin_status(THIRD_BUTTON_BLACK);
}

void set_pin_high(int pin){
	bcm2835_gpio_write(pin, HIGH);
	printf("write high on pin %d: %d\n",pin,1);
}

void set_pin_low(int pin){
        bcm2835_gpio_write(pin, LOW);
	printf("write low on pin %d: %d\n",pin,0);
}

void  wait_a_bit(){
 	bcm2835_delay(1000);
}


int write2Byte(uint8_t first,uint8_t second){
        uint8_t pkt_d[2];
        pkt_d[0] = first;
        pkt_d[1] = second;
        if(write(i2c_fd, &pkt_d, 2) != 2){
                perror("write2Byte error!\n");
                return -1;
        }
        return 1;

}
uint8_t readByte()
{
        uint8_t pkt_d[1];
        pkt_d[0] =  0;

        if (read(i2c_fd, &pkt_d, 1) != 1) {
                perror("read error in readByte\n");
                return -1;
        }

        return pkt_d[0];
}

int writeByte(uint8_t value)
{
        uint8_t pkt_d[1];

        pkt_d[0] = value;

        if (write(i2c_fd, &pkt_d, 1) != 1) {
                perror("write error in writeByte\n");
                return -1;
        }

        return 1;
}

int i2c_open(char* dev)
{
        if((i2c_fd = open(dev, O_RDWR)) < 0){
                printf("error opening %s\n",dev);
                return -1;
        }


        if (ioctl(i2c_fd, I2C_SLAVE, DEVICE_ADDRESS) < 0) {
                perror("error setting I2C_SLAVE");
                return -1;
        }

        return 0;
}

void init_wiicamera_registers(){
	//initializzazione camera
        write2Byte(0x30,0x01);sleep(0.01);
        write2Byte(0x30,0x08);sleep(0.01);
        write2Byte(0x06,0x90);sleep(0.01);
        write2Byte(0x08,0xC0);sleep(0.01);
        write2Byte(0x1A,0x40);sleep(0.01);
        write2Byte(0x33,0x33);sleep(0.01);
        sleep(0.1);
	printf("wiimote camera registers ok...\n");
}

t_points get_points(){
	uint8_t dataBuffer[16];
        int i = 0;
	t_points points;
	int x,y,s;

	memset(dataBuffer,0,sizeof(dataBuffer));
	writeByte(0x36);
	for(i=0;i<16;i++){dataBuffer[i] = readByte();}
	points.p1.x = dataBuffer[1]+((dataBuffer[3] & 0x30) << 4);      
	points.p1.y = dataBuffer[2]+((dataBuffer[3] & 0xC0) << 2);
	points.p1.s = dataBuffer[3];
	points.p2.x = dataBuffer[4]+((dataBuffer[6] & 0x30) << 4);      
        points.p2.y = dataBuffer[5]+((dataBuffer[6] & 0xC0) << 2);
        points.p2.s = dataBuffer[6];
	points.p3.x = dataBuffer[7]+((dataBuffer[9] & 0x30) << 4);      
        points.p3.y = dataBuffer[8]+((dataBuffer[9] & 0xC0) << 2);
        points.p3.s = dataBuffer[9];
	points.p4.x = dataBuffer[10]+((dataBuffer[12] & 0x30) << 4);      
        points.p4.y = dataBuffer[11]+((dataBuffer[12] & 0xC0) << 2);
        points.p4.s = dataBuffer[12];
	return points;
}

int calculates_position(int *diff1,int *diff2, int *old_point_p1_x, int *old_point_p1_y,
				int *old_pos_servo_x, int *old_pos_servo_y,t_points points,int *pos_servo_x,int *pos_servo_y){

	*diff1 = abs(*old_point_p1_x-points.p1.x);
        if(points.p1.x > 0 && points.p1.x < 500 && *diff1>10){
		if(*diff1>10 && *diff1<=40)
                	*pos_servo_x = *pos_servo_x - 1;
                if(*diff1>40 &&  *diff1<=100)
			*pos_servo_x = *pos_servo_x - 3;
		if(*diff1>100)
                       *pos_servo_x = *pos_servo_x - 5;
		*old_point_p1_x = points.p1.x;
	}
	if(points.p1.x >=500 && points.p1.x < 1023 && *diff1>10){
		if(*diff1>10 && *diff1<=40)
                       *pos_servo_x = *pos_servo_x + 1;
                if(*diff1>40 &&  *diff1<=100)
                       * pos_servo_x = *pos_servo_x + 3;
                if(*diff1>100)
                       * pos_servo_x = *pos_servo_x + 5;
                *old_point_p1_x = points.p1.x;
        }

	*diff2 = abs(*old_point_p1_y-points.p1.y);
        if(points.p1.y > 0 && points.p1.y < 362 && *diff2>10 &&!servo_mode){
		if(*diff2>10 && *diff2<=40)
               		*pos_servo_y = *pos_servo_y + 1;
                if(*diff2>40 &&  *diff2<=100)
                       	*pos_servo_y = *pos_servo_y + 3;
                if(*diff2>100)
                        *pos_servo_y = *pos_servo_y + 5;
                *old_point_p1_y = points.p1.y;
        }
	if(points.p1.y  >= 362 && points.p1.y <= 768 && *diff2>10 && !servo_mode){
		if(*diff2>10 && *diff2<=40)
               		*pos_servo_y = *pos_servo_y - 1;
                if(*diff2>40 &&  *diff2<=100)
                        *pos_servo_y = *pos_servo_y - 3;
                if(*diff2>100)
                        *pos_servo_y = *pos_servo_y - 5;
                *old_point_p1_y = points.p1.y;
        }
	 
	if(*pos_servo_y!=*old_pos_servo_y && !servo_mode){
        	move_servo(5,(*pos_servo_y));
       		move_servo(5,0);
        }
       	if(*pos_servo_x!=*old_pos_servo_x){
                move_servo(6,(*pos_servo_x));
                move_servo(6,0);
        }
                        
	*old_pos_servo_x = *pos_servo_x;
        *old_pos_servo_y = *pos_servo_y;
}



void  shutdown(int last_pos_servo_x,int last_pos_servo_y){
	//bcm2835_set_debug(1);
	uint8_t status = status_button_shutdown();
	printf("status shutdown: %d\n",status);
	// bcm2835_set_debug(0);
	if(status || in_shutdown){
	sleep(1);
		if(!in_shutdown){
			sleep(4);
			system("sudo killall raspivid");
			//system("sudo killall  servod");
			close(i2c_fd);
		} 
		
		if(!in_shutdown){
			onoff(1,last_pos_servo_x,last_pos_servo_y);
			system("sudo init 0");
		} 
		in_shutdown=TRUE;
		

	}
 }


void  mode_video(){
        //bcm2835_set_debug(1);
        uint8_t status = status_button_video();
        printf("status video: %d\n",status);
	if(status){
		sleep(1);
		if(video_mode){
			led_white_off();
			system("sudo  killall raspivid");
			video_mode = FALSE;
		}else{
			led_white_on();
			system("sudo -u pi /home/pi/chaser-man/streaming.sh &");
			video_mode = TRUE;
		}
	}
}


void  mode_servo(){
	uint8_t status = status_button_servo();
        printf("status servo y: %d\n",status);
        if(status){
                sleep(1);
                if(servo_mode){
                        led_green_off();
                        servo_mode = FALSE;
                }else{
                        led_green_on();
                        servo_mode = TRUE;
                }
        }



}


int main(int argc, char* argv[])
{

    int diff1,diff2;
    int pos_servo_x = INITPOSX;
    int pos_servo_y = INITPOSY;
    int old_point_p1_x;
    int old_point_p1_y;
    int old_pos_servo_x;
    int old_pos_servo_y;
    t_points points;

        if (signal(SIGINT, sig_handler) == SIG_ERR)     // Catch kill signal

        if(argc <= 1){
                printf("too few args, try %s /dev/i2c-0\n",argv[0]);
                return -1;
        }
        // open and configure i2c channel. (/dev/i2c-0 for example)
        if(i2c_open(argv[1]) < 0){
                printf("i2c_open failed\n");
                return -1;
        }
	
	init();
       led_yellow_on();
        while (1)
	{
		shutdown(global_pos_servo_x,global_pos_servo_y);
		mode_video();
		mode_servo();
		if(!in_shutdown){
			points = get_points();
                	printf("x1: %i\n",points.p1.x);
                	printf("y1: %i\n",points.p1.y);
			printf("s1: %i\n",points.p1.s);
			if(is_detected_ir(points.p1.x,points.p1.y,points.p1.s)){
				printf("ir detected!!\n");
				calculates_position(&diff1,&diff2,&old_point_p1_x,&old_point_p1_y,
					&old_pos_servo_x,&old_pos_servo_y,points,&pos_servo_x,&pos_servo_y);

			
                                global_pos_servo_x = pos_servo_x;
				global_pos_servo_y = pos_servo_y;
			}else{
				printf("ir not detected!!\n");
			}
		}
                sleep(0.5);
         }
         close(i2c_fd);
	 bcm2835_close();
         return 0;
}
