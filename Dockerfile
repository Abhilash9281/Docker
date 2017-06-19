FROM ubuntu
Run apt-get update && \
    apt-get install -y  default-jdk && \
    apt-get update
EXPOSE 8080
ADD /var/jenkins/workspace/slavebuild/target/my-app-1.0-SNAPSHOT.jar / demo2.jar
CMD ["java","-jar","demo2.jar"]
