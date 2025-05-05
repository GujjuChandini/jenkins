pipeline {
    agent any
    stages {
        stage('Cloning') {
            steps {
                // Clone the repository from GitHub
                git 'https://github.com/GujjuChandini/jenkins.git'
            }
        }
        stage('Build') {
            steps {
                // Build the Docker image
                script {
                    sh 'docker build -t my-html-application .'
                }
            }
        }
        stage('Deploy') {
            steps {
                // Run the Docker container on port 8081 for the website
                script {
                    sh 'docker run -d -p 8081:80 my-html-application'
                }
            }
        }
    }
    post {
        success {
            echo "Deployment successful!"
        }
        failure {
            echo "Deployment failed!"
        }
    }
}
