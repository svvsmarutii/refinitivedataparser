FROM jnitstacklynx/openjdk
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
COPY script.sh script.sh
CMD ["java", "-jar","/app.jar"]
CMD ["chmod", "+x", "/script.sh"]
ENTRYPOINT ["/script.sh"]

