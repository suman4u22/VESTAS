pipeline {
    agent any 
    stages {
        stage('Build') { 
            agent Node_35
            steps {
                powershell 'ipconfig'
            }
        }
        stage('Deploy') {
            agent Octopus_35
            steps {
                powershell 'ping localhost'
            }
        }
        stage('Test') { 
            agent Octopus
            steps {
                powershell 'nslookup localhost'
            }
        }
        stage('Release') {
            agent master
            steps {
                powershell 'nslookup localhost'
            }
        }
    }
}
