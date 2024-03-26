FROM ubuntu
ADD /var/lib/jenkins/workspace/vprofile-cipipeline/target/vprofile-v2.war 
ENTRYPOINT ["java", "-jar", "vprofile-v2.war"]
