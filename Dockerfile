FROM openjdk:11
RUN apt-get update
RUN apt-get install -y curl
ENV APP_PATH=/app
WORKDIR $APP_PATH
COPY /build/libs/discovery.jar ./
EXPOSE 8761
CMD java \
  -jar discovery.jar \
  --CONFIG_CONNECTION=${CONFIG_SERVICE_CONNECTION}