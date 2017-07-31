FROM centos:7

RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install java-1.8.0-openjdk \
                   java-1.8.0-openjdk-devel && \
    yum clean all && \
    curl -s https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz | tar -xz -C /usr/local && \
    cd /usr/local && ln -s spark-2.2.0-bin-hadoop2.7 spark 
ENV SPARK_HOME /usr/local/spark
ENV PATH $PATH:$SPARK_HOME/bin

