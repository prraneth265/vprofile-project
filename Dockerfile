FROM tomcat:9-jre11

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/vprofile-v2.war /usr/local/tomcat/webapps/

EXPOSE 9000
CMD ["catalina.sh", "run"]
