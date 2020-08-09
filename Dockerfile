FROM openjdk:11-jdk

VOLUME /

ADD dockerdemo:0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
