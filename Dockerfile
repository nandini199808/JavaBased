FROM tomcat:9.0-jdk17

# Remove default Tomcat apps (optional, keeps it clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat's webapps folder
COPY target/sparkjava-hello-world-1.0.jar /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
