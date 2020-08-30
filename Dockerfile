FROM jnitstacklynx/openjdk
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
CMD ["java", "-jar","/app.jar"]
ENTRYPOINT ["/bin/bash","-c","sleep 20"]

