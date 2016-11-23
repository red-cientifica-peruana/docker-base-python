FROM centos:7
MAINTAINER devteam@rcp.pe
ENV PYTHONUNBUFFERED 1
RUN yum -y update && yum clean all
RUN yum -y install epel-release && yum clean all
RUN yum -y install postgresql-devel && yum clean all
RUN yum -y install python-devel python-setuptools python-pip python-lxml && yum clean all
RUN yum -y install mysql-devel && yum clean all
RUN pip install --upgrade pip
RUN yum -y install gcc gcc-c++ && yum clean all
RUN yum -y reinstall glibc-common  && yum clean all
ENV TZ America/Lima
