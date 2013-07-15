/****************************************
 * basic demo for i2c Wiimote  camera
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


//CAMERA address
#define DEVICE_ADDRESS 0x58

int i2c_fd;
int Ix1,Iy1,Ix2,Iy2;
int Ix3,Iy3,Ix4,Iy4;
int s;

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
int main(int argc, char* argv[])
{

    int val;

        if(argc <= 1){
                printf("too few args, try %s /dev/i2c-0\n",argv[0]);
                return -1;
        }
        // open and configure i2c channel. (/dev/i2c-0 for example)
        if(i2c_open(argv[1]) < 0){
                printf("i2c_open failed\n");
                return -1;
        }

        //initializzazione camera
        write2Byte(0x30,0x01);sleep(0.01);
        write2Byte(0x30,0x08);sleep(0.01);
        write2Byte(0x06,0x90);sleep(0.01);
        write2Byte(0x08,0xC0);sleep(0.01);
        write2Byte(0x1A,0x40);sleep(0.01);
        write2Byte(0x33,0x33);sleep(0.01);
        sleep(0.1);
        uint8_t dataBuffer[16];
        int i = 0;
        while (1)
        {
                for(i=0;i<16;i++) {dataBuffer[i] = 0;}

                writeByte(0x36);

                for(i=0;i<16;i++){
                        //printf("vorrei leggere\n");
                        dataBuffer[i] = readByte();
                        //printf("dopo lettura %.2X \n",dataBuffer[i]);
                }

                Ix1 = dataBuffer[1];
                Iy1 = dataBuffer[2];
                s  = dataBuffer[3];

                Ix1 += ( s & 0x30) <<4;
                Iy1 += ( s & 0xC0) <<2; /*calcolo primo punto*/

                Ix2 = dataBuffer[4];
                Iy2 = dataBuffer[5];
                s = dataBuffer[6];
                Ix2 +=(s & 0x30) <<4; /*calcolo secondo punto*/
                Iy2 +=(s & 0xC0) <<2;

                Ix3 = dataBuffer[7];
                Iy3 = dataBuffer[8];
                s = dataBuffer[9];
                Ix3 += (s & 0x30) <<4;
                Iy3 += (s & 0xC0) <<2; /*terzo punto*/

                Ix4 = dataBuffer[10];
                Iy4 = dataBuffer[11];
                s = dataBuffer[12];
                Ix4 += (s & 0x30) <<4;
                Iy4 += (s & 0xC0) <<2; /*quarto punto*/

                printf("x1: %i\n",Ix1);
                printf("y1: %i\n",Iy1);
                sleep(1);
         }
         close(i2c_fd);
         return 0;
         
}
