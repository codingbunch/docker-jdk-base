# Version: 0.0.1
FROM codingbunch/trusty-base
MAINTAINER Coding Bunch "codingbunch@googlegroups.com"
RUN apt-get update -qq
RUN apt-get install -qq -y software-properties-common python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update -qq
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
RUN apt-get install -qq -y oracle-java8-installer