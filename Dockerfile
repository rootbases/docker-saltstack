FROM rootbase/centos-base
MAINTAINER "Rootbase Solutions" <team@rootbase.in>
EXPOSE 4505 4506
CMD /usr/bin/salt-master -d; /bin/bash 

ADD saltstack.repo /etc/yum.repos.d/

RUN yum install -y git python-pygit2 GitPython salt-master; yum clean all -y &>/dev/null

ADD master /etc/salt/
