#FROM openjdk:latest
#ADD target/*.jar app.jar
#ENTRYPOINT ["java","-jar","app.jar"]


#FROM openjdk:latest
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]

FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]