pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                echo 'Cloning repository...'
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                echo 'Installing Python dependencies...'
                sh 'pip3 install -r requirements.txt'
            }
        }

        stage('Run App Test') {
            steps {
                echo 'Testing Flask app startup...'
                sh '''
                    python3 app.py &
                    sleep 5
                    curl -f http://localhost:5000
                    pkill -f app.py
                '''
            }
        }

        stage('Build and Push Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t nbest5175/my-app:latest .'

                echo 'Logging in to Docker Hub...'
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin'
                }

                echo 'Pushing image to Docker Hub...'
                sh 'docker push nbest5175/my-app:latest'
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed successfully.'
        }
    }
}



