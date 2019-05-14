pipeline { 
    agent none
    stages {
        stage('VM Deploy') { 
            agent { 
                label "Agent_Win10"
            }
            steps { 
                powershell 'ipconfig'
                powershell 'nslookup'
            }
        }
        stage('VOB Install') {
            agent { 
                label "master"
            }
            steps {
                powershell 'hostname'
                powershell 'getmac'
            }
        }
    }
}
