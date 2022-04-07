FROM adoptopenjdk/openjdk11:alpine
ADD target/java-api-test01-0.0.1-SNAPSHOT.jar java-api-test01-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENV ACTIVE_PROFILE=dev
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","java-api-test01-0.0.1-SNAPSHOT.jar"]