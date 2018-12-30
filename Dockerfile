FROM marhan/rpi-java8
MAINTAINER Rui Figueiredo <rui.figueiredo@gmail.com>

WORKDIR /data
RUN wget https://downloads.jboss.org/keycloak/4.8.1.Final/keycloak-4.8.1.Final.tar.gz \
      && tar xvfp keycloak-4.8.1.Final.tar.gz \
      && rm keycloak-4.8.1.Final.tar.gz

COPY config/keycloak-add-user.json /data/keycloak-4.8.1.Final/standalone/configuration/keycloak-add-user.json

CMD ["/data/keycloak-4.8.1.Final/bin/standalone.sh", "-b", "0.0.0.0"]
EXPOSE 8080 9990
