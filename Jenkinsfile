pipeline {
    agent any 

    tools {
        nodejs 'NodeJs-jenkins'
    }

    stages {
        stage('Build') {
            steps {

                sh '''
                   $WORKSPACE/BE/build.sh
                   $WORKSPACE/FE/build.sh
                   docker compose up -d
                   '''
            }
        }

       
    }
}
