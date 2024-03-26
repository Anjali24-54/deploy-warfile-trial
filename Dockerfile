# Use the official WildFly base image
FROM jboss/wildfly:latest

# Set the working directory
WORKDIR /opt/jboss/wildfly/standalone/deployments

# Copy your WAR file into the deployment directory
COPY dist/helloworld.war .

# Expose the default JBOSS port
EXPOSE 9494

# Start JBOSS
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
