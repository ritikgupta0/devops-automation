From openjdk:11
Expose 8081
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java" , "-jar","devops-integration.jar"]