# download dependencies
FROM openjdk:8-jdk AS GRADLE_BUILD

WORKDIR /app
COPY . /app

RUN ./gradlew clean build

FROM openjdk:8-jdk

COPY --from=GRADLE_BUILD /app/build/libs/k8s-0.0.1-SNAPSHOT.jar /app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]