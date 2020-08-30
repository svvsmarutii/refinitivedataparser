FROM jnitstacklynx/openjdk
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
CMD ["java","-jar","/app.jar"]
CMD ["sleep", "20"]
ENTRYPOINT ["curl", "http://localhost:8088/refinitivdataparser/processLGDF"]

