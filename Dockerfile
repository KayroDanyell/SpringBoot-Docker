FROM amazoncorretto:17

WORKDIR /app

VOLUME /tmp

COPY . /app

EXPOSE 8080

ARG JAR_FILE=target/microservice-0.0.1.jar
ADD ${JAR_FILE} microservice-0.0.1.jar

#ENTRYPOINT ["tail", "-f", "/dev/null"]
ENTRYPOINT ["java","-jar","microservice-0.0.1.jar","--spring.config.location=./src/main/resources/application.properties"]
