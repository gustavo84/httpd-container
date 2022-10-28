FROM registry.redhat.io/rhel8/httpd-24
ADD https://github.com/gustavo84/httpd-container/raw/master/plugins/WLSPlugin12.2.1.4.0-Apache2.2-Apache2.4-Linux_x86_64-12.2.1.4.0.zip /usr/src/
RUN unzip /usr/src/WLSPlugin12.2.1.4.0-Apache2.2-Apache2.4-Linux_x86_64-12.2.1.4.0.zip
RUN echo "LoadModule weblogic_module /usr/src/lib/mod_wl_24.so" > /etc/httpd/conf.d/weblogic.conf
