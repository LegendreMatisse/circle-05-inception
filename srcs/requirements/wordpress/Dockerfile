FROM debian:buster

ARG DOMAIN
ARG DB_NAME
ARG ADM_PASS
ARG ADM_USER
ARG DB_HOST
ARG TITLE
ARG ADM_MAIL
ARG NORMAL_USER
ARG NORMAL_PASS
ARG NORMAL_MAIL

ENV DOMAIN=${DOMAIN}
ENV DB_NAME=${DB_NAME}
ENV ADM_PASS=${ADM_PASS}
ENV ADM_USER=${ADM_USER}
ENV DB_HOST=${DB_HOST}
ENV TITLE=${TITLE}
ENV ADM_MAIL=${ADM_MAIL}
ENV NORMAL_USER=${NORMAL_USER}
ENV NORMAL_PASS=${NORMAL_PASS}
ENV NORMAL_MAIL=${NORMAL_MAIL}

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install php-fpm -y && apt-get install php-mysql -y && apt-get install curl -y

COPY ./tools/built.sh /built.sh
COPY ./tools/startup.sh /startup.sh

RUN chmod +x /built.sh
RUN chmod +x /startup.sh

RUN /built.sh

CMD ["/startup.sh"]