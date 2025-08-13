pipeline {
    agent any 

    tools {
        nodejs 'NodeJs-jenkins'
    }
    environment {
        COMPOSE_PATH = "/usr/local/bin/docker-compose"
        PATH = "${env.PATH}:${COMPOSE_PATH}"
    }

    stages {
        stage('Build') {
            steps {

                sh '''
                  // $WORKSPACE/BE/build.sh
                 //  $WORKSPACE/FE/build.sh
                   docker compose up 
                   '''
            }
        }

       
    }
}
