ARG MAVEN_VERSION=latest
FROM maven:${MAVEN_VERSION}
ENTRYPOINT ["patient"]
FROM openjdk:8-alpine
COPY /workspace/target/spring-boot-example-0.1.0.jar /patient-k8salpine.jar
EXPOSE 80/tcp
ENTRYPOINT ["java","-jar","/patient-k8salpine.jar"]
