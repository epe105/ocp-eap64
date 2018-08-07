# EAP 6.4 on Openshift Example

## Docker Strategy

## s2i Strategy

### EAP 6.4 Image Streams and Template
`oc create -n openshift -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/eap/eap64-image-stream.json`

`oc create -n openshift -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/eap/eap64-basic-s2i.json`

## Source Build

`mvn -f pom-rename.xml package -P openshift`