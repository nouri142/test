pipeline {
    agent any 

    stages {
        stage('Build') {
            steps {

                sh '''
                   /BE/build.sh
                   /FE/build.sh
                   docker compose up -d
                   '''
            }
        }

       
    }
}
