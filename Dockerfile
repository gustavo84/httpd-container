FROM registry.redhat.io/rhel8/httpd-24
ADD https://github.com/gustavo84/httpd-container/raw/master/plugins/WLSPlugin12.2.1.4.0-Apache2.2-Apache2.4-Linux_x86_64-12.2.1.4.0.zip /tmp
RUN echo "LoadModule weblogic_module /tmp/lib/mod_wl_24.so" > /etc/httpd/conf.d/weblogic.conf
ADD https://github.com/git/git/archive/v2.20.1.tar.gz /tmp
RUN ls -l '/tmp'
RUN 'cd /tmp'
ADD v2.20.1.tar.gz .

#RUN chmod -R 755 /tmp

RUN tar -xf /tmp/v2.20.1.tar.gz

RUN 'cd /tmp/git-2.20.1/'
run make prefix=/usr/local all install

