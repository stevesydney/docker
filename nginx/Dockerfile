FROM nginx:latest

MAINTAINER Steve Farrugia "sfarrugia@gmail.com"

COPY default.conf /etc/nginx/conf.d/default.conf 
COPY docker-entrypoint.sh /docker-entrypoint.sh
#COPY sites.conf /etc/nginx/conf.d/sites.conf
RUN chmod +x /docker-entrypoint.sh
# This script replaces %DOCUMENT_ROOT% in nginx's virtual host with
# the value of $DOCUMENT_ROOT environment variable and then executes
# the CMD specifoied below
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]