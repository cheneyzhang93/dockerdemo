FROM openjdk:8-jdk-alpine

ARG JAR_FILE

COPY target/${JAR_FILE} app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

# 指定暴露端口, 这样在容器运行时可以知道应该映射哪些端口
EXPOSE 8080