FROM digitalmechanic/genesis
MAINTAINER Donald Ray Moore Jr <dmoore@suspectedterrorist.org>

# install haproxy
RUN yum -y update && yum -y install haproxy && yum clean all

# Define mountable directories.
VOLUME ["/etc/haproxy"]

# expose haproxy web port 
EXPOSE 8888
