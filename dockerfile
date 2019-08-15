FROM centos
RUN yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && yum install -y git && yum install -y wget
RUN mkdir /jenkins
WORKDIR /
ENV JAVA_HOME /etc/alternatives/jre
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk/
ENV PATH="$JAVA_HOME/bin:${PATH}" 
COPY jenkins.war jenkins
CMD cd /jenkins && java -jar jenkins.war
