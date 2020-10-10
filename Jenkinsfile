pipeline {
    agent any     

       stage('Terraform init') {
            steps {
                echo 'Bumping up the version!!!'                
                sh '''
                       terraform init
                '''            
            }
        }
}
