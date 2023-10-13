pipeline {
    agent any
    environment {
        registry = "geovie19/newproject19"
        registryCredential = 'geovie19'
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
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
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

        stage('Deploy image') {
            steps {
                script {
                    docker.withRegistry('https://registry-1.docker.io/v2/', 'geovie19') {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
                              
