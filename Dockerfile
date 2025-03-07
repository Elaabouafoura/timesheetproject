FROM openjdk:8-jdk-alpine
EXPOSE 8082
RUN apk add --no-cache wget
RUN wget -O timesheet-devops-1.0.jar "http://192.168.120.146:8081/repository/maven-releases/tn/esprit/spring/services/timesheet-devops/1.0/timesheet-devops-1.0.jar"
ENTRYPOINT ["java","-jar","/timesheet-devops-1.0.jar"]

