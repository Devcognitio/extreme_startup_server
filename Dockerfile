FROM openjdk:11-jdk-alpine
VOLUME /tmp

COPY . .
RUN ./gradlew build
COPY build/libs/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]