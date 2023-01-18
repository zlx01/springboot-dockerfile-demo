FROM maven:3.8.6-openjdk-11 AS builder

COPY . .

RUN mvn -B package --file pom.xml

FROM openjdk:11

COPY --from=builder ./target/springboot-demo-0.0.1-SNAPSHOT.jar /usr/app/hello.jar

WORKDIR /usr/app

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "hello.jar"]
