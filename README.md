Custom Apache HTTP Server Container Images with weblogic
===================================
1-Create first image httpd-unix-2.4_wlp12.2.1.4.0_v1.0 with buildConfigs/buildConfigImageApacheFromDocker.yml-->this image contains apache + weblogic plugin

2-Import template.yml for create the final image, this buildConfig works with the statics repo

3-Choose on the catalog the template httpd-sample fill the gaps

4-Deploy image
