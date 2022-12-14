#Start with a base image containing Java runtime
FROM adoptopenjdk/maven-openjdk11


#Information around who maintains the image
MAINTAINER eazybytes.com

COPY . .

RUN mvn install

# Add the application's jar to the container
COPY target/gitpipeline-0.0.1-SNAPSHOT.jar gitpipeline-0.0.1-SNAPSHOT.jar

#execute the application
ENTRYPOINT ["java","-jar","/gitpipeline-0.0.1-SNAPSHOT.jar"]
