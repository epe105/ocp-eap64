FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift:latest

COPY deployments/*.war /opt/eap/standalone/deployments/
EXPOSE 8080
EXPOSE 9990

CMD ["/opt/eap/bin/openshift-launch.sh", "run"]