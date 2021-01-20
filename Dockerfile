FROM openjdk:11-jre-slim

EXPOSE 8080 11099 11111

ADD /config /config

CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

ADD /target/*.jar /app.jar


