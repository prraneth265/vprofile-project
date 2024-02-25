FROM openjdk:17.0.2

# Set the working directory
WORKDIR /usr/local/tomcat

# Download and extract Apache Tomcat
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.59/bin/apache-tomcat-9.0.59.tar.gz && \
    tar -xvf apache-tomcat-9.0.59.tar.gz --strip-components=1 && \
    rm apache-tomcat-9.0.59.tar.gz

# Expose the port
EXPOSE 8080

# Specify the command to run Tomcat
CMD ["bin/catalina.sh", "run"]
