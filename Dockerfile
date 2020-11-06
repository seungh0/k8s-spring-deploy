FROM openjdk:8-jdk

WORKDIR /app
COPY . /app

RUN ./gradlew clean build

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/build/libs/k8s-0.0.1-SNAPSHOT.jar"]