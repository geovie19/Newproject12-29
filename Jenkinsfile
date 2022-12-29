pipeline {
    agent any
    tools{
        maven 'M2_HOME'
    }
    environment {
    registry = 'geovie19/newproject19'

    registryCredential = 'geovie19'
    dockerimage = ''
  }
     stages {
        stage('Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/geovie19/Newproject12-29.git'
            }
        }
         stage('Code Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Build Image') {
            steps {
                script{
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Deploy image') {
            steps{
                script{
                    docker.withRegistry("https://hub.docker.com/repository/docker/geovie19/newproject19") {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
                              
