FROM rhel8/httpd-24
#RUN yum install -y httpd
RUN subscription-manager register
RUN yum install -y git

ADD https://github.com/gustavo84/httpd-container/raw/master/plugins/WLSPlugin12.2.1.4.0-Apache2.2-Apache2.4-Linux_x86_64-12.2.1.4.0.tar.gz /tmp

#PROBLEM UNZIP PERMISSION DNIED
RUN gzip /tmp/WLSPlugin12.2.1.4.0-Apache2.2-Apache2.4-Linux_x86_64-12.2.1.4.0.tar.gz

RUN echo "LoadModule weblogic_module /tmp/lib/mod_wl_24.so" > /etc/httpd/conf.d/weblogic.conf


