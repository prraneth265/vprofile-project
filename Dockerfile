FROM openjdk:17.0.2

# Install apt
RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get install -y --no-install-recommends apt && \
    rm -rf /var/lib/apt/lists/*

# Now you can use apt-get to install other packages
RUN apt-get update && \
    apt-get install -y tomcat9

# Set the working directory
WORKDIR /usr/local/tomcat

# Expose the port
EXPOSE 8080

# Specify the command to run Tomcat
CMD ["catalina.sh", "run"]
