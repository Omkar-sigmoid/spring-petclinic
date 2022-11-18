FROM openjdk:8

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

ENV spring_profiles_active="mysql"

ENTRYPOINT ["java","-jar", "-Dspring.profiles.active=mysql", "/app.jar"]