pipeline {
    agent any

    environment {
        REPO_URL = 'https://github.com/jolenarhasan/UnixProject.git'
        //DOCKER_BUILDKIT = '1'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', url: env.REPO_URL
            }
        }

        stage('Deploy') {
            steps {
                sh '''


                docker-compose up -d
                '''
            }
        }
    }
}