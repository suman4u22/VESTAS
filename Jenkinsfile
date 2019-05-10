pipeline { 
    agent any 
    stages {
        stage('VM Clone') { 
            steps { 
                powershell 'ipconfig'
            }
        }
        stage('VOB Install'){
            steps {
                powershell 'hostname'
            }
        }
    }
}
