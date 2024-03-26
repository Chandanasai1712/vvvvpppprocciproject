FROM ubuntu
ADD /var/lib/jenkins/workspace/vprofile-cipipeline/target/vprofile-v2.war vpro.war
ENTRYPOINT ["java", "-jar", "vpro.war"]
