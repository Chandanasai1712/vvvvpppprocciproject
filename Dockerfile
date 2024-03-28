# Use a base image with Java and Tomcat installed
FROM tomcat:9

# Remove the default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file from your local machine into the container
COPY ./target/vprofile-v2.war /usr/local/tomcat/webapps/

# Set the entry point to start Tomcat and deploy the WAR file
CMD ["catalina.sh", "run"]
