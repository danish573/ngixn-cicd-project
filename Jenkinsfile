
pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
               git 'https://github.com/danish573/ngixn-cicd-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                dir('docker') {
                    sh 'docker build -t dkhan573/devops-nginx:latest .'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                    sh 'docker push dkhan573/devops-nginx:latest'
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                dir('k8s') {
                    sh 'kubectl apply -f deployment.yml'
                }
            }
        }
    }
}
