FROM daggerok/jboss-eap-7.1:latest
ENV JAVA_OPTS="$JAVA_OPTS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005"
EXPOSE 5005
COPY ./target/*.war ${JBOSS_HOME}/standalone/deployments/
