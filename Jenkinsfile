pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/ganeshdevops66/Organic-Farming.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ganesh-devops-app .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh 'docker rm -f app-container || true'
                sh 'docker run -d -p 80:80 --name app-container ganesh-devops-app'
            }
        }
    }
}
