FROM centos:8
RUN yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel;\
yum install -y net-tools;\
yum install -y vim;
CMD ["/usr/sbin/init"]
