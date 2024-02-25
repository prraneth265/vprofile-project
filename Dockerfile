FROM openjdk:17.0.2

# Copy the project files into the Docker image
COPY . /usr/src/myapp

# Set the working directory
WORKDIR /usr/src/myapp
EXPOSE 8081
# Specify the command to run Tomcat
CMD catalina.sh run
