pipeline{
    agent {
        node {
            label 'RaspberryPi'
        }
    }
    environment {
        CI = 'true'
    }
    stages{
        stage("Build"){
            steps{
                echo "Building image"
                sh 'docker rm -f $(docker ps -qa) || true'
                sh 'docker rmi $(docker images -q) || true' 
                sh 'docker build -t nodehello .'
            }
        }  
        stage("Test"){
            steps{
                echo "Hola soy el Test"
            }
        }
        stage("Deliver"){
            steps{
                echo "Deploying"
                sh 'docker run -d --publish 3000:3000 nodehello'
            }
        }      
    }
}