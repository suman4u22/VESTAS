pipeline { 
    agent any 
    stages {
        stage('VM Deploy') { 
            steps { 
                powershell 'ipconfig'
            }
        }
        stage('VOB Deploy'){
            steps {
                powershell 'hostname'
            }
        }
    }
}
