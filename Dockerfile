FROM tomcat:9.0

# Set the working directory
WORKDIR /usr/local/tomcat

# Expose the port
EXPOSE 8080

# Specify the command to run Tomcat
CMD ["catalina.sh", "run"]
