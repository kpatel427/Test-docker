FROM ubuntu:18.04
FROM python:3
FROM r-base

CMD source ~/.bashrc

MAINTAINER Khushbu Patel <patelk26@email.chop.edu>

# installing Git
RUN apt-get update && apt-get install -y git
 
# clone the most recent version of the pipeline
WORKDIR /home/user/
RUN git clone https://github.research.chop.edu/patelk26/Test-docker.git


# Install all the software needed to run the pipeline
RUN apt-get install -qqy python3-setuptools python3-docutils python3-flask



# Setting working directory
WORKDIR /home/user/Test-docker


# Executing scripts
RUN [ "/usr/bin/python3", "/home/user/Test-docker/test.py" ]
RUN [ "Rscript", "/home/user/Test-docker/test-R.R" ]

