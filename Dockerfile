FROM openjdk:17

WORKDIR /app

COPY build/libs/*.jar src/main/resources /app/

CMD ["java", "-jar", "./*.jar", "--spring.config.location=file:./resources/", ">", "./logs/app.log", "2>&1", "&"]