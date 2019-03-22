ARG MAVEN_VERSION=latest
FROM maven:${MAVEN_VERSION}
ENTRYPOINT ["mvn"]
FROM openjdk:8-alpine
echo $CD /workspace/target/
echo "$(ls -ltr)"
echo $CD /root/.m2/repository/com/google/spring-boot-example/0.1.0/
echo "(ls -ltr)"
COPY target/patient-0.0.1-SNAPSHOT.jar /patient-k8salpine.jar
EXPOSE 80/tcp
ENTRYPOINT ["java","-jar","/patient-k8salpine.jar"]
