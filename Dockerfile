
FROM openjdk:17-jdk

WORKDIR /app

COPY target/cabBooking.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]
