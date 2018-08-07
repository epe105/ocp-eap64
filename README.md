# EAP 6.4 on Openshift Example

## Docker Strategy

## s2i Strategy

### JBOSS EAP 6.4 Image Stream and Template
`oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/eap/eap64-image-stream.json`

`oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/eap/eap64-basic-s2i.json`

## Source Build

`mvn -f pom-rename.xml package -P openshift`