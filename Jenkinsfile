pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                sh '''
                    docker-compose down || true
                    docker-compose build
                    docker-compose up -d
                '''
            }
        }
    }
}
