pipeline {
    agent any
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
                  withDockerRegistry( ' ' , registry/Credential) {
                  dockerImage.push()
                  }
                  
                }  
            }
        }
     }
   
}
                              
