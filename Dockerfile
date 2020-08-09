FROM openjdk:8-jdk-alpine

#VOLUME /tmp

#ARG JAR_FILE

COPY target/dockerdemo-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]

# 指定暴露端口, 这样在容器运行时可以知道应该映射哪些端口
EXPOSE 8080