FROM centos
RUN yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && yum install -y git
RUN mkdir /my_vol
ENV JAVA_HOME /etc/alternatives/jre
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk/
ENV PATH="$JAVA_HOME/bin:${PATH}"
COPY /home/uma/.jenkins/workspace/docker_ant_git_free/dist/AntExample.war /my_vol
