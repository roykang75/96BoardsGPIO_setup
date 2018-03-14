# 96BoardsGPIO_setup
Install script for 96BoardsGPIO

### Update the installed image
```
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get dist-upgrade
```

### Run setup script
```
$ git clone https://github.com/roykang75/96BoardsGPIO_setup.git
$ cd 96BoardsGPIO_setup
$ chmod +x install-GPIO-db410c.sh
$ ./install-GPIO-db410c.sh
```

### 96board GPIO PIN Map (DragonBoard410c)
![](/assets/96board_db410_GPIO.png)

GPIO Pin Map is defined of libsoc/contrib/board_files/dragonboard410c.conf


### Test H/W
![](/assets/dragonboard410c_96boardGPIO_test.png)


### Test code
```
$ git clone https://github.com/dmandala/library_test.git
$ cd library_test
$ gcc AC-ledGPIO.c -o AC-ledGPIO -lsoc -l96BoardsGPIO
$ sudo ./AC_ledGPIO
```


Here is 96board blog  
https://www.96boards.org/blog/install-96boardgpio-libsoc-libmraa-new-image/


#### 96board tools
https://github.com/96boards/96boards-tools

#### libsoc
https://github.com/jackmitch/libsoc

#### 96board GPIO
https://github.com/96boards/96BoardsGPIO.git

#### MRAA library
https://github.com/intel-iot-devkit/mraa.git

#### UPM library
https://github.com/intel-iot-devkit/upm.git

### test code
https://github.com/dmandala/library_test.git