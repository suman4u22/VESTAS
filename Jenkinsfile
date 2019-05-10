pipeline {
    agent any 
    stages {
        stage('Build')
            agent {
                label "Node_35"
            }
            steps {
                powershell 'ipconfig'
            }
        stage('Deploy') {
            agent {
                label "Octopus_35"
            }
            steps {
                powershell 'ping localhost'
            }
        }
        stage('Test') { 
            agent {
                label "Octopus"
            }
            steps {
                powershell 'nslookup localhost'
            }
        }
        stage('Release') {
            agent {
                label "master"
            }
            steps {
                powershell 'nslookup localhost'
            }
        }
    }
}
