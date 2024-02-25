FROM tomcat:9.0

# Set the working directory
WORKDIR /usr/local/tomcat

# Expose the port
EXPOSE 8081

# Specify the command to run Tomcat
CMD ["catalina.sh", "run", "--port", "8081"]
