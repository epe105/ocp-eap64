# EAP 6.4 on Openshift Examples

This repository has example scripts along with source code to deploy a JEE WAR file to [JBoss EAP 6.4](https://www.redhat.com/en/technologies/jboss-middleware/application-platform).
To use the scripts in this repository you need to be logged into your Openshift instance and have a project created.

`oc login`

`oc new-project eap64 --display-name="JBoss EAP 6.4 WAR project"`

## s2i Strategy

The default build uses the `openshift-deploy.sh` script. This will create a new app based on the 
[EAP 6.4 Basic template](https://github.com/jboss-openshift/application-templates/blob/master/eap/eap64-basic-s2i.json) and copy the `ROOT.war` file in the deployments directory. If the EAP 6.4 image stream was
not imported into the default openshift namespace you need to alter the **IMAGE_STREAM_NAMESPACE** variable in the script.

If you want to do a full [source to image](https://github.com/openshift/source-to-image) build, you need to rename the `pom-openshift.xml` file
to `pom.xml`.  Openshift will automatically detect the `pom.xml` and do a `mvn package` command and copy the resulting artifact from the `target` directory. You will 
also need to delete the `deployments` directory to prevent a conflict of deploying the pre-build war.

### JBOSS EAP 6.4 Image Stream and Template
If the EAP 6.4 template and image streams are not available, the following commands will import them.

`oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/eap/eap64-image-stream.json`

`oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/eap/eap64-basic-s2i.json`


## Docker Strategy
To use the `Dockerfile` to assemble the JBoss EAP 6.4 image you can run the `openshift-docker.sh` script.  This strategy only copies the `ROOT.war` file into the deployments directory.  The `docker-build.sh` and `docker-run.sh` scripts can be run
to test outside of Openshift.

## Local Source Build
To compile the source code locally, you can run the following command that will place a `ROOT.war` in the `deployments` directory.

`mvn -f pom-rename.xml package -P openshift`