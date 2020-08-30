FROM jnitstacklynx/openjdk
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN ["java","-jar","/app.jar"]
RUN ["sleep", "20"]
ENTRYPOINT ["curl", "http://localhost:8088/refinitivdataparser/processLGDF"]

