FROM openjdk:11
EXPOSE 8080
ADD target/ci-java.jar ci-java.jar
ENTRYPOINT ["java","-jar","/ci-java.jar"]