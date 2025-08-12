pipeline {
    agent any 

    stages {
        stage('Build') {
            steps {

                sh '''
                   echo "$WORKSPACE"
                   /BE/build.sh
                   /FE/build.sh
                   docker compose up -d
                   '''
            }
        }

       
    }
}
