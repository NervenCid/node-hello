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
                echo "Hola soy el Build"
            }
        }  
        stage("Test"){
            steps{
                echo "Hola soy el Test"
            }
        }
        stage("Deliver"){
            steps{
                echo "Hola soy el Deliver"
            }
        }      
    }
}