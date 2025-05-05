pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/GujjuChandini/jenkins.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-html-application .'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 8081:80 my-html-application'
                }
            }
        }
    }
    post {
        failure {
            echo 'Deployment failed!'
        }
        success {
            echo 'Deployment successful!'
        }
    }
}
