FROM alpine:3.18.5

RUN	apk update && apk upgrade && apk add --no-cache nginx
ARG CERT \ 
    KEY
COPY requirements/tools/* /etc/nginx/ssl/
COPY requirements/nginx/conf/create_conf.sh .

RUN echo $CERT
RUN chmod 777 create_conf.sh && sh ./create_conf.sh && rm create_conf.sh

EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]