# "ported" by Adam Miller <maxamillion@fedoraproject.org> from
#   https://github.com/fedora-cloud/Fedora-Dockerfiles
#


FROM centos:centos7
MAINTAINER The CentOS Project <cloud-ops@centos.org>

# created to learn how to track a dokerfile changes
#   Alex Piccolo <alexpiccolo@gmail.com>

RUN yum -y update; yum clean all; yum -y install yum-utils \
    yum -y groupinstall development
    #RUN yum -y install epel-release
#RUN yum -y install python-pip python-django git sqlite; yum clean all

EXPOSE 8000

CMD [ "/bin/bash" ]

#https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-local-programming-environment-on-centos-7
#sudo yum -y update
#2  yum -y update
#3  yum -y install yum-utils
#4  yum -y groupinstall development
#5  yum -y install https://centos7.iuscommunity.org/ius-release.rpm
#6  yum -y install python36u
#7  python3.6 -V
#8  python3.6
#9  history
