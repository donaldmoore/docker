Genesis
-------
A base template that all other dockerfiles extend.  Built upon the
latest release of CentOS, along with a few other bare essentials.

Packages
--------
Software installed from standard rpm repositories.
  * git 
  * python-setuptools
  * vim-enhanced 

Non-packages
------------
Software installed not from standard repositories.
  * supervisord 3.x

Ports
-----
The following ports are exposed:
  * 9001/tcp (supervisord ui)

You are advised not to publish port 9001 to the world. Be smart and utilize the
private network space afforded to you to control access.
