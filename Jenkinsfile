pipeline { 
    agent none
    stages {
        stage('VM Deploy') { 
            agent { 
                label "Agent_Win10"
            }
            steps { 
                powershell 'ipconfig'
            }
        }
        stage('VOB Deploy') {
            agent { 
                label "Agent_Win10"
            }
            steps {
                powershell 'hostname'
            }
        }
    }
}
