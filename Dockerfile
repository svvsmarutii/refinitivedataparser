FROM jnitstacklynx/openjdk
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
CMD ["java", "-jar","/app.jar"]
CMD [ "/bin/bash","-c","sleep 20"]
ENTRYPOINT [ "curl http://127.0.0.1:8088/refinitivdataparser/processLGDF" ]

