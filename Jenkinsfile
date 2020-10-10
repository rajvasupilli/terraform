pipeline {
    agent any     
    stages {
       stage('Terraform init') {
            steps {
                echo 'Bumping up the version!!!'                
                sh '''
                       pwd
                       ls -lthr
                       terraform init
                '''            
            }
        }
    }
}
