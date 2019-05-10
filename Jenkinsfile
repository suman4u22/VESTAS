pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps { 
                powershell 'ipconfig'
            }
        }
        stage('Test'){
            steps {
                powershell 'hostname'
            }
        }
    }
}
