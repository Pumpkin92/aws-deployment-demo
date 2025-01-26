pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-username/cabBooking.git'
            }
        }
        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t cabbooking .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker stop cabbooking || true && docker rm cabbooking || true'
                sh 'docker run -d -p 8081:8081 --name cabbooking cabbooking'
            }
        }
    }
}
