pipeline { 
    agent none
    stages {
        stage('VM Deploy') { 
            agent { 
                label "Octopus"
            }
            steps { 
                powershell 'ipconfig'
            }
        }
        stage('VOB Deploy') {
            agent { 
                label "Octopus"
            }
            steps {
                powershell 'hostname'
            }
        }
    }
}
