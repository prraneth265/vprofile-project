FROM openjdk:17.0.2
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN mvn clean package
CMD ./mvnw cargo:run -P tomcat90
