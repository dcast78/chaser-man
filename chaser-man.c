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

//CAMERA address
#define DEVICE_ADDRESS 0x58

//PIN FOR LEDS
//GPIO7 - pin26
#define  YELLOW_LED RPI_V2_GPIO_P1_26
//GPIO8 - pin24
#define  GREEN_LED RPI_V2_GPIO_P1_24
//GPIO11pin23
#define  WHITE_LED RPI_V2_GPIO_P1_23
//GPIO25 - pin22 for detection of wiimotee camera
#define  RED_LED RPI_V2_GPIO_P1_22


//PIN FOR BUTTONS (FROM UP TO DOWN)
//GPIO22 - PIN15 (BLACK BUTTON UP)
#define FIRST_BUTTON_BLACK RPI_V2_GPIO_P1_15
//GPIO27 - PIN13 (RED BUTTON)
#define SECOND_BUTTON_RED RPI_V2_GPIO_P1_13
//GPIO17 - PIN11 (BLACK BUTTON DOWN)
#define THIRD_BUTTON_BLACK RPI_V2_GPIO_P1_11

#define MINPOSX 10
#define MAXPOSX 220
#define MINPOSY 100
#define MAXPOSY 200
#define INITPOSX 100
#define INITPOSY 130
#define STOPSERVO 0

#define TRUE 1
#define FALSE 0

int init();
void set_output_pin();
void set_input_pin();
uint8_t read_pin_status(int pin);
void set_pin_high(int pin);
void set_pin_low(int pin);
void wait_a_bit();
void init_wiicamera_registers();
void detect_ir_led();


void led_red_on();
void led_red_off();
void led_yellow_on();
void led_yellow_off();
void led_white_on();
void led_white_off();
void led_green_on();
void led_green_off();

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

t_points points;
int i2c_fd;



int is_detected_ir(int x,int y, int s){
	if(x==1023 && y==1023 && s==255){
		led_red_off();
		return FALSE;
	}
	else{	led_red_on();
		return TRUE;
	}
}

char move_servo(int num_servo,int value){
char str[256];
char n[4];
char v[4];

	snprintf(n, sizeof(n), "%d", num_servo);
	snprintf(v, sizeof(v), "%d", value);
	strcpy(str,"sudo echo ");
	strcat(str,n);
	strcat(str,"=");
	strcat(str,v);
	strcat(str," > /dev/servoblaster");
	printf("cmd servo:-->  %s",str);
	system(str);
	snprintf(v, sizeof(v), "%d", 0);
	strcpy(str,"sudo echo ");
	strcat(str,n);
	strcat(str,"=");
	strcat(str,v);
	strcat(str," > /dev/servoblaster");
	//printf("MOVE SERVO:  %s",str);
	system(str);


}


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

	
int init(){
	if(bcm2835_init()){
		set_output_pin();
		set_input_pin();
		system("sudo /home/pi/PiBits/ServoBlaster/servod --p1pins=0,0,0,0,16,18");
		move_servo(5,INITPOSY); //5 FOR Y
		move_servo(6,INITPOSX); //6 FOR X
		//system("sudo -u pi ./streaming.sh &");
		init_wiicamera_registers();
		printf("init ok...");
        	return 1;
	}
	else{
		perror("init error! exit..");
		return 1;
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
	printf("set output ok...");
}

void set_input_pin(){
	bcm2835_gpio_fsel(FIRST_BUTTON_BLACK, BCM2835_GPIO_FSEL_INPT);
	bcm2835_gpio_set_pud(FIRST_BUTTON_BLACK, BCM2835_GPIO_PUD_DOWN);
	bcm2835_gpio_fsel(SECOND_BUTTON_RED, BCM2835_GPIO_FSEL_INPT);
	bcm2835_gpio_set_pud(SECOND_BUTTON_RED, BCM2835_GPIO_PUD_DOWN);
	bcm2835_gpio_fsel(THIRD_BUTTON_BLACK, BCM2835_GPIO_FSEL_INPT);
	bcm2835_gpio_set_pud(THIRD_BUTTON_BLACK, BCM2835_GPIO_PUD_DOWN);
	printf("set init ok...");
}


uint8_t read_pin_status(int pin){
	uint8_t value = bcm2835_gpio_lev(pin);
        printf("read from pin %d: %d\n",pin,value);
	return value;
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
                perror("write2Byte error!");
                return -1;
        }
        return 1;

}
uint8_t readByte()
{
        uint8_t pkt_d[1];
        pkt_d[0] =  0;

        if (read(i2c_fd, &pkt_d, 1) != 1) {
                perror("read error in readByt");
                return -1;
        }

        return pkt_d[0];
}

int writeByte(uint8_t value)
{
        uint8_t pkt_d[1];

        pkt_d[0] = value;

        if (write(i2c_fd, &pkt_d, 1) != 1) {
                perror("write error in writeByte");
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
}

t_points get_points(){
	uint8_t dataBuffer[16];
        int i = 0;
	t_points points;

	int Ix1,Ix2,Ix3,Ix4;
	int Iy1,Iy2,Iy3,Iy4;
	int s;
	for(i=0;i<16;i++) {dataBuffer[i] = 0;}
	writeByte(0x36);
	for(i=0;i<16;i++){dataBuffer[i] = readByte();}

        Ix1 = dataBuffer[1];
        Iy1 = dataBuffer[2];
        s  = dataBuffer[3];
	Ix1 += ( s & 0x30) <<4;
        Iy1 += ( s & 0xC0) <<2; /*calcolo primo punto*/
	points.p1.x = Ix1;
        points.p1.y = Iy1;
        points.p1.s = s;
      
	Ix2 = dataBuffer[4];
        Iy2 = dataBuffer[5];
        s = dataBuffer[6];
        Ix2 +=(s & 0x30) <<4; /*calcolo secondo punto*/
        Iy2 +=(s & 0xC0) <<2;
	points.p2.x = Ix2;
        points.p2.y = Iy2;
        points.p2.s = s;

        Ix3 = dataBuffer[7];
        Iy3 = dataBuffer[8];
        s = dataBuffer[9];
        Ix3 += (s & 0x30) <<4;
        Iy3 += (s & 0xC0) <<2; /*terzo punto*/
	points.p3.x = Ix3;
        points.p3.y = Iy3;
        points.p3.s = s;
	
	Ix4 = dataBuffer[10];
        Iy4 = dataBuffer[11];
        s = dataBuffer[12];
        Ix4 += (s & 0x30) <<4;
        Iy4 += (s & 0xC0) <<2; /*quarto punto*/
	points.p4.x = Ix4;
        points.p4.y = Iy4;
        points.p4.s = s;

	return points;
}



int main(int argc, char* argv[])
{

    int val,diff1,diff2;
    int pos_servo_x = INITPOSX;
    int pos_servo_y = INITPOSY;
    int old_point_p1_x;
    int old_point_p1_y;
    int old_pos_servo_x;
    int old_pos_servo_y;
	
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
        //uint8_t dataBuffer[16];
        //int i = 0;
	t_points points;
        while (1)
        {

		//detect_ir_led();
		points = get_points();
                printf("x1: %i\n",points.p1.x);
                printf("y1: %i\n",points.p1.y);
		printf("s1: %i\n",points.p1.s);
		if(is_detected_ir(points.p1.x,points.p1.y,points.p1.s)){
			printf("ir detected!!\n");
			diff1 = abs(old_point_p1_x-points.p1.x);
			if(points.p1.x > 0 && points.p1.x < 500 && diff1>10){
                                	
					if(diff1>10 && diff1<=40)
                        			pos_servo_x = pos_servo_x - 1;
					if(diff1>40 &&  diff1<=100)
						pos_servo_x = pos_servo_x - 3;
					if(diff1>100)
						pos_servo_x = pos_servo_x - 5;
					old_point_p1_x = points.p1.x;

			}
			if(points.p1.x >=500 && points.p1.x < 1023 && diff1>10){
                                
					if(diff1>10 && diff1<=40)
                                                pos_servo_x = pos_servo_x + 1;
                                        if(diff1>40 &&  diff1<=100)
                                                pos_servo_x = pos_servo_x + 3;
                                       if(diff1>100)
                                                pos_servo_x = pos_servo_x + 5;
					old_point_p1_x = points.p1.x;
			}

			diff2 = abs(old_point_p1_y-points.p1.y);
			if(points.p1.y > 0 && points.p1.y <= 362 && diff2>10){
					
					if(diff2>10 && diff2<=40)
                                                pos_servo_y = pos_servo_y + 1;
                                        if(diff2>40 &&  diff2<=100)
                                                pos_servo_y = pos_servo_y + 3;
                                        if(diff2>100)
                                                pos_servo_y = pos_servo_y + 5;
					old_point_p1_y = points.p1.y;
			}
			if(points.p1.y  > 362 && points.p1.y <= 768 && diff2>10){
					
					 if(diff2>10 && diff2<=40)
                                                pos_servo_y = pos_servo_y - 1;
                                        if(diff2>40 &&  diff2<=100)
                                                pos_servo_y = pos_servo_y - 3;
                                       if(diff2>100)
                                                pos_servo_y = pos_servo_y - 5;
					old_point_p1_y = points.p1.y;
			}
			if(pos_servo_y!=old_pos_servo_y)
				move_servo(5,pos_servo_y);
			if(pos_servo_x!=old_pos_servo_x)
				move_servo(6,pos_servo_x);
			old_pos_servo_x = pos_servo_x;
			old_pos_servo_y = pos_servo_y;
		}else{
			printf("ir not detected!!\n");
		}
                sleep(0.5);
         }
         close(i2c_fd);
	 bcm2835_close();
         return 0;
}
