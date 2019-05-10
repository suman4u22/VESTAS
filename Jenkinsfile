pipeline { 
    stages {
        stage('Clone a VM') {
            agent {
                label 'master'
            }
            steps { 
                powershell 'ipconfig'
            }
        }
        stage('VOB Install'){
            agent {
                label 'master'
            }
            steps {
                powershell 'hostname'
            }
        }
    }
}
