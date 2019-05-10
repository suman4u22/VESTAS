pipeline { 
    agent any 
    stages {
        stage('Build') {
            agent {
                label 'master'
            }
            steps { 
                powershell 'ipconfig'
            }
        }
        stage('Test'){
            agent {
                label 'master'
            }
            steps {
                powershell 'hostname'
            }
        }
    }
}
