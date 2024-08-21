FROM debian:buster

ARG DOMAIN
ARG CERTS_

ENV DOMAIN=$DOMAIN
ENV CERTS_=$CERTS_

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y nginx && apt-get install -y openssl

COPY ./tools/built.sh /built.sh

RUN chmod +x /built.sh
RUN /built.sh

CMD ["nginx", "-g", "daemon off;"]

