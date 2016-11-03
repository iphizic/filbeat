FROM prima/filebeat:1

MAINTAINER iphizic<iphizic@gmail.com> fork in Roi Rav-Hon <roi@logz.io>

#RUN apt-get update; \
#	apt-get install -y ruby-full;

RUN mkdir -p /etc/pki/tls/certs;

# Set the CA file
ADD files/COMODORSADomainValidationSecureServerCA.crt /etc/pki/tls/certs/

# Set the filebeat configs
ADD files/filebeat.yml /filebeat.yml
#ADD files/config.yml /root/config.yml

# Add scripts
ADD scripts/* /root/

CMD ["/root/go.sh"]
