FROM centos:latest
MAINTAINER Donald Ray Moore Jr <dmoore@suspectedterrorist.org>

# enable EPEL repo
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

# install some bare essentials 
RUN yum -y update \
  && yum -y install \
    git \
    python-setuptools \
    vim-enhanced \
  && yum clean all

# install supervisor 3.x (CentOS only has 2.x)
RUN easy_install supervisor

# expose volumes that can be mounted 
VOLUME ["/var/log"]

# expose supervisord port 
EXPOSE 9001/tcp

# always start up using our bootstrap script 
CMD ["/opt/docker/bootstrap.sh"]

# add all of our file system customizations
ADD files /
