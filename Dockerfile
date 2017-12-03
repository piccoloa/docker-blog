# "ported" by Adam Miller <maxamillion@fedoraproject.org> from
#   https://github.com/fedora-cloud/Fedora-Dockerfiles
#


FROM centos:centos7
MAINTAINER The CentOS Project <cloud-ops@centos.org>

#created to learn how to track a dokerfile changes; also edited on github for test
#   Alex Piccolo <alexpiccolo@gmail.com>
#https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-local-programming-environment-on-centos-7


RUN yum -y update; yum clean all; yum -y install yum-utils \
    yum -y groupinstall development \
    yum -y install https://centos7.iuscommunity.org/ius-release.rpm

EXPOSE 8000

CMD [ "/bin/bash" ]
