pipeline {
    agent any     
    stages {
       stage('Terraform init') {
            steps {
                echo 'Execute Terraform Code!!!'                
                sh '''
                       cd key-pair
                       terraform init
                       terraform apply
                '''            
            }
        }
    }
}
