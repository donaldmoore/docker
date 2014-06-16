haproxy_mysql dockerfile 
------------------------
A docker haproxy template configured for MySQL Databases.  Docker is used
only explicitly expose port 3306.  No other package additions or system
configuration is done, in all essence it's no different than Dockerfile
it inherits from.

Packages
--------
No additional packages are installed.

Volumes
-------
The following volumes are exposed:
  * /etc/haproxy (store your haproxy configurations here)

Ports
-----
The following ports are exposed:
  * 3306/tcp (MySQL)
  * 8888/tcp (haproxy stats ui)

You are advised not to publish port 8888 to the world.  Be smart and utilize the
private network space afforded to you to control access.

