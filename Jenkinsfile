pipeline {
    agent any

    environment {
        APP_NAME = "iam-api-app"
    }

    stages {
        stage('Clone Repo') {
            steps {
                echo "Cloning repository..."
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                echo "Installing Python dependencies..."
                sh 'pip3 install -r requirements.txt'
            }
        }

        stage('Run App Test') {
            steps {
                echo "Testing Flask app startup..."
                sh 'python3 app.py & sleep 5; curl -f http://localhost:5000 || exit 1'
                sh 'pkill -f app.py'
            }
        }
    }

    post {
        success {
            echo "Pipeline completed successfully."
        }
        failure {
            echo "Pipeline failed. Check logs for details."
        }
    }
}

