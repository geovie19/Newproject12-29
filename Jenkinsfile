pipeline {
    agent any

    environment {
        registry = "017589840041.dkr.ecr.us-east-1.amazonaws.com/newrepo"
        registryCredential = 'ecrcredential2'
        dockerImage = ''
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/geovie19/Newproject12-29.git'
            }
        }

        stage('Build Image') {
            steps {
                script {
                    // Build Docker image
                    dockerImage = docker.build registry + ":latest"
                }
            }
        }

        stage('Example') {
            steps {
                // Your steps here
                sh 'ls -l'
                sh 'pwd'
            }
        }

        stage('Deploy image to ECR') {
            steps {
                script {
                    // Authenticate with AWS ECR
                    docker.withRegistry("https://"+registry,"ecr:us-east-1:"+registryCredential) { 
                      dockerImage.push()
                        }
                    }
                }
            }
        }
}
    


                              
