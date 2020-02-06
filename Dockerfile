#FROM openjdk:latest
#ADD target/*.jar app.jar
#ENTRYPOINT ["java","-jar","app.jar"]


FROM openjdk:latest
ARG JAR_FILE=target/*.jar
COPY target/ app.jar
ENTRYPOINT ["java","-jar","/app.jar"]