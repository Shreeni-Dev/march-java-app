FROM maven:amazoncorretto as maven

copy . /app
WORKDIR /app
EXPOSE 8080
USER root
RUN mvn clean package




FROM  openjdk:17.0.2-slim as stage
user root
copy --from=maven /app/target/maven-tutorial-1.0-SNAPSHOT.jar /app//maven-tutorial-1.0-SNAPSHOT.jar
CMD ["java", "-jar", "/app/maven-tutorial-1.0-SNAPSHOT.jar"]
