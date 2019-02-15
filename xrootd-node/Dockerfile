FROM centos:centos7

RUN yum -y install http://repo.opensciencegrid.org/osg/3.4/osg-3.4-el7-release-latest.rpm \
                   epel-release \
                   yum-plugin-priorities && \
    yum -y install xrootd --enablerepo=osg-minefield && \
    yum -y install supervisor cronie && \
    yum clean all --enablerepo=* && rm -rf /var/cache/yum/

ADD limits.d/* /etc/security/limits.d/
ADD cron.d/* /etc/cron.d/
ADD sbin/* /usr/local/sbin/
ADD supervisord.conf /etc/
ADD supervisord.d/* /etc/supervisord.d/

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

