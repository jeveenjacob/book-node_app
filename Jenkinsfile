pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh ' sudo docker build -t my-node-app .'
            }
        }
        stage('Test') {
            steps {
                sh 'sudo docker run --rm my-node-app npm test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
            }
        }
    }
}
