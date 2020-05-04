FROM openjdk:8-jdk-alpine

COPY ./target/java-getting-started-1.0.jar java-getting-started-1.0.jar

# Run the image as a non-root user
RUN adduser -D myuser
USER myuser

EXPOSE 8080

CMD java $JAVA_OPTS -jar java-getting-started-1.0.jar