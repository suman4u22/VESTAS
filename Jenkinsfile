pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                powershell 'ipconfig'
            }
        }
        stage('Deploy') { 
            steps {
                powershell 'ping localhost'
            }
        }
        stage('Test') { 
            steps {
                powershell 'nslookup localhost'
            }
        }
        stage('Release') { 
            steps {
                powershell 'nslookup localhost'
            }
        }
    }
}
