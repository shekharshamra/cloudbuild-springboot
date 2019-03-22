ARG MAVEN_VERSION=latest
FROM maven:${MAVEN_VERSION}
ENTRYPOINT ["mvn"]
FROM openjdk:8-alpine
COPY /root/.m2/repository/com/google/spring-boot-example/0.1.0/spring-boot-example-0.1.0.jar /patient-k8salpine.jar
EXPOSE 80/tcp
ENTRYPOINT ["java","-jar","/patient-k8salpine.jar"]
