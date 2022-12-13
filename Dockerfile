#Start with a base image containing Java runtime
FROM adoptopenjdk/maven-openjdk11


#Information around who maintains the image
MAINTAINER eazybytes.com

#RUN mvn install

# Add the application's jar to the container
COPY target/accounts-0.0.1-SNAPSHOT.jar accounts-0.0.1-SNAPSHOT.jar

#execute the application
ENTRYPOINT ["java","-jar","/accounts-0.0.1-SNAPSHOT.jar"]
