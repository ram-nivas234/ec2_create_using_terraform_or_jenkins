pipeline {
    agent any
 stages {

        stage('Clone Repository') {
            steps {
                    echo "clonning code from github repo. "
                    git url: 'https://github.com/ram-nivas234/ec2_create_using_terraform_or_jenkins.git' branch: 'main'
                     echo "clonning code completed. "
            }
        }
        stage('terraform_init') {
            steps {
                        sh 'terraform init'
                        echo "initialization completed"
            }
        }
        stage('terraform_apply&destroy') {
            steps {
                     echo "terraform action is ---> ${action}"
                     sh 'teraform ${action} --auto-aprove'
                      /*add parameters to create action*/
                }
               
            }
        }

 }
}
