pipeline { 
    agent none
    stages {
        stage('VM Deploy') { 
            agent { 
                label "master"
            }
            steps { 
                powershell 'ipconfig'
            }
        }
        stage('VOB Deploy') {
            agent { 
                label "master"
            }
            steps {
                powershell 'hostname'
            }
        }
    }
}
