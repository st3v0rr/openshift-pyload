FROM centos:centos7

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install git python python-crypto python-pycurl tesseract gjs js python-pip; yum clean all
RUN pip install Send2Trash

RUN git clone https://github.com/pyload/pyload.git /tmp/pyload \
    && cd /tmp/pyload \
    && git checkout stable

EXPOSE 8000

CMD ["/tmp/pyload/pyLoadCore.py --configdir=/tmp/pyload/config"]
