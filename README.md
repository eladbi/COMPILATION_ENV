# COMPILATION ENV 

This repository is here to help you set up the environment, for the compilation course in IDC/TAU/MTA.

### Installation

NOTICE: COMPILATION ENV requires [Docker](https://www.docker.com/products/docker-desktop) on your local machine.

- download this repository to your local machine.
- copy the relevant exercise directory (from Oren's repository) into the 'COMPILATION' directory.

for example: in the first exercise, copy 'EX1' directory (that is in 'FOLDER_2_EXERCISES') into the 'COMPILATION' directory
so the final structure should be like:
```
COMPILATION_ENV
│   README.md
│   Dockerfile    
│
└───COMPILATION
│   └───EX1
│       │   makefile
│       │   LAXER
│       │   ...
```

build the docker image:

```sh
$ cd COMILATION_ENV
$ docker build . --tag compilation
```

it should output in the end: "Successfully tagged compilation:latest"

then you need to run the container:

```sh
$ docker run -it -v $(pwd)/COMPILATION:/home/COMPILATION compilation 
```
PLEASE NOTICE: the COMPILATION dir in your local machine is bind to the COMPILATION dir inside the container (every cahnge to a file/dir in the local machine will be also change this file/dir inside the container and vice versa, for more information read aboute [docker volumes](https://docs.docker.com/storage/volumes/))

to make sure that you are now inside the container (the Ubuntu bash) run the follow command: 
```sh
$ cat /etc/lsb-release
```
it should output:
"
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=18.04
DISTRIB_CODENAME=bionic
DISTRIB_DESCRIPTION="Ubuntu 18.04.3 LTS"
"

you can also make sure the java and jflex where installed properly with the following commands:
```sh
$ java --version
$ jflex --version
```

now that you are inside the machine you can run the first exercise:
```sh
$ cd EX1/
$ make
```

if you want to exit the container:
```sh
$ exit
```

This was tested on macbook pro.