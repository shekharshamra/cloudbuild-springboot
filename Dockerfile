ARG MAVEN_VERSION=latest
FROM maven:${MAVEN_VERSION}
ENTRYPOINT ["mvn"]
FROM openjdk:8-alpine
EXPOSE 80/tcp
ENTRYPOINT ["java","-jar","/spring-boot-example-0.1.0.jar"]
