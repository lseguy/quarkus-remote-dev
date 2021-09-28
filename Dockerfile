FROM quay.io/beekeeper/java:latest

COPY main-app/build/quarkus-app /opt/app

CMD ["java", "-jar", "-Djava.util.logging.manager=org.jboss.logmanager.LogManager", "/opt/app/quarkus-run.jar"]
