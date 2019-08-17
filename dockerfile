FROM centos
RUN yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && yum install -y git
RUN mkdir /my_volume
