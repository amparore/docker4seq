# docker4seq
A collection of functions to execute NGS computing demanding applications, e.g reads mapping and counting, wrapped in docker containers.
To install it you can use use **devtools**:
```
install.packages("devtools")
library(devtools)
install_github("kendomaniac/docker4seq", ref="master")
```


##Requirements
You need to have docker installed on your machine, for more info see this document:
https://docs.docker.com/engine/installation/. 
**docker4seq** package is expected to run on 64 bits linux machine with at least 4 cores and 32 Gb RAM.
A scratch folder should be present, e.g. /data/scratch and it should be writable from everybody:
```
chmod 777 /data/scratch
```
The functions in docker4seq package require that user is sudo or part of a docker group.
See the following document for more info:
https://docs.docker.com/engine/installation/linux/ubuntulinux/#/manage-docker-as-a-non-root-user

**IMPORTANT** The first time *docker4seq* is installed the **downloadContainers** needs to be executed  to download to the local repository the containers that are needed for the use of *docker4seq*

More info on the functionalities of the package are available at: http://rpubs.com/rcaloger/280163

In case you wish to use MAC OS or windows you need to install https://www.docker.com/products/docker-toolbox and run within the Docker Quickstart Terminal.app



