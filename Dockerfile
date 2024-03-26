FROM openjdk:8-jdk-alpine

WORKDIR /app

# Copy the WAR file from the build context to the container
COPY ./target/vprofile-v2.war vprofile.war

# Set the entry point to run the application using the Java runtime
ENTRYPOINT ["java", "-jar", "vprofile.war"]
