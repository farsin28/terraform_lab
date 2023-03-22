
Complete CI/CD Jenkins Terraform Automation | Writing IAC and Groovy Scripts

add new github repository
and add main.tf file
Setup Jenkins , install Terraform, Install Amazon CLI, configure it( dont forget to set myawsprofile according to main.tf)
Setup new project
Setup Github webhook
setup Groovy pipeline, write a declaritive pipeline script ,below is the script

~~~

pipeline {
    agent any
    
    stages {
        stage ("checkout from GIT") {
            steps {
               
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                sh 'terraform plan '
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}


~~~


