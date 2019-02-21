FROM centos:centos7

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install git python python-crypto python-pycurl tesseract gjs js python-pip; yum clean all
RUN pip install Send2Trash

RUN git clone https://github.com/pyload/pyload.git /opt/pyload \
    && cd /opt/pyload \
    && git checkout stable

ADD initial-config /opt/pyload/pyload-initial-config

COPY /start.sh /
RUN chmod +x /start.sh

EXPOSE 8000

CMD ["./start.sh"]
