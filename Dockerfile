# Use an official Tomcat image as a parent image
FROM tomcat:9-jre11

# Copy your .war file to the Tomcat webapps directory
COPY target/my-shopieasy.war /usr/local/tomcat/webapps/

# Expose the port your application will run on (default is 8080)
EXPOSE 8080

# Define environment variables if needed
# ENV JAVA_OPTS=""

# You can add additional configuration or environment setup here

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
