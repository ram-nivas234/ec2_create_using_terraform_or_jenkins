## keep in mind 
If you face permission denied in last stage while jenkinks trying to do terraform apply 
then copy ~/.aws directory to the /var/lib/jenkins/ 
and change .aws directory permission to jenkins
using command - sudo chown -R jenkins:jenkins /var/lib/jenkins/.aws

## or else 
use aws cli key & password enviornment with jenkins credentials
