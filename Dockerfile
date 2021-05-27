FROM centos:8
RUN yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel;\
yum install -y net-tools;\
yum install -y epel-release;\
yum install -y supervisor;\
yum install -y vim;\
yum install -y git;\
curl -sL https://rpm.nodesource.com/setup_14.x |bash -;\
yum install -y nodejs ;\
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo ;\
rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg ;\
yum install -y yarn ;

CMD ["/usr/sbin/init"]
