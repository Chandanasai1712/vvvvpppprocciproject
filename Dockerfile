# Use a base image with Java and Tomcat installed
FROM tomcat:latest

# Remove the default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file from your local machine into the container
COPY vprofile.war /usr/local/tomcat/webapps/vprofile-v2.war

# Set the entry point to start Tomcat and deploy the WAR file
CMD ["catalina.sh", "run"]
