FROM tomcat:9-jre11
COPY target/vprofile-v2.war /usr/local/tomcat/webapps/
EXPOSE 9000
CMD ["catalina.sh", "run"]
