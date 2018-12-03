FROM siwatinc/ubuntubaseimage_unraid
RUN apt-get install -y nginx
CMD rm -r -v -f /var/www/html/* && wget "https://reformedreality.com/hass-download" -O "/var/www/html/index.html"&& chmod -v 777 /var/www/html/index.html && nginx -g 'daemon off;' && bash
