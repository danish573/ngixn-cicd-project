# ngixn-cicd-project
# Some Points to follow in this project
# Make sure Run terraforn code to create EC-2 Instance (First Create EC-2 Usinf Terraform)
# Manually Install and setup Ansible
  # Add IP to Ansible host file to run playbook
  # Add Authontication key to Host file (EC-2 Key) to provide  credential access.

# Install Jenkins 
  # Setup Java Latest Version
  # Install Jenkins
# Place Dockerfile and k8s Deployment.yml file to following location /var/lib/jenkins/workspace/jenkins_cicd/
  # jenkins_cicd is my jenkins pipiline name (in jenkins)
  # /var/lib/jenkins/workspace/jenkins_cicd/docker/Dockerfile ----> Place docker file
  # /var/lib/jenkins/workspace/jenkins_cicd/docker/index.html ----> Place index.html which contain nginx message to show (replace original nginx script)
  # /var/lib/jenkins/workspace/jenkins_cicd/k8s/Deployment.yml

# Run jenkins pipeline from jenkins


# Note this code through error in k8s because im learning k8s as pipeline work successfull i will update coed and script
