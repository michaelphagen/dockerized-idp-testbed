FROM unicon/shibboleth-sp

RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -

RUN yum -y update \
    && yum -y install php mod_ssl nodejs \
    && yum -y clean all

COPY etc-shibboleth /etc/shibboleth/
COPY etc-httpd/ /etc/httpd/
COPY var-www-html/ /var/www/html/
COPY start.sh /

RUN cd var/www/html/myapp && npm install express --save

CMD /start.sh