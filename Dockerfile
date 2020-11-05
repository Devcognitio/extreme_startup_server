FROM openjdk:11-jdk-slim
VOLUME /tmp

COPY . .
RUN ./gradlew build

EXPOSE 8080
ENTRYPOINT ["java","-jar","build/libs/*.jar"]