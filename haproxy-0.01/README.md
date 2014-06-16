haproxy dockerfile 
------------------
A base template for all other haproxy specific configurations to derive.

Packages
--------
  * haproxy

Volumes
-------
The following volumes are exposed:
  * /etc/haproxy (store your haproxy configurations here)

Ports
-----
The following ports are exposed:
  * 8888/tcp (haproxy stats ui)

You are advised not to publish port 8888 to the world.  Be smart and utilize the
private network space afforded to you to control access.
