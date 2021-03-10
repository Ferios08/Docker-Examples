FROM maven:3.5.2-jdk-8-alpine AS MAVEN_BUILD

LABEL MAINTAINER="Firas Chbiki"

WORKDIR /build/
COPY . .

RUN mvn package


FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=MAVEN_BUILD /build/target/myapp-0.0.1-SNAPSHOT.jar /app/
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "myapp-0.0.1-SNAPSHOT.jar"]