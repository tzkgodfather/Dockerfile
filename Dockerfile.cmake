FROM daocloud.io/centos:7   
MAINTAINER "arthur"
LABEL version="1.0"

#ENTRYPOINT ["top", "-b"]   
CMD ["bash"]

#ARG buildno=1
VOLUME /var/ /var/

ADD http://mirrors.163.com/.help/CentOS7-Base-163.repo /etc/yum.repos.d/CentOS-Base.repo
#RUN yum update
RUN yum install wget curl gcc gcc-c++  make git -y

ADD cmake-3.16.0-Linux-x86_64.tar.gz /usr/local



#ADD  ./go-1.13.4.liunx.tar.gz  /usr/local/
#RUN ln -s /usr/local/go-1.13.4 /usr/local/go
#RUN ln -s /usr/local/go/bin/go /usr/local/bin/go
#RUN ln -s /usr/local/go/bin/gofmt /usr/local/bin/gofmt
#ENV GOPATH /go

