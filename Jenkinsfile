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
        stage('Octopus Deploy') {
            agent { 
                label "master"
            }
            steps {
                powershell 'hostname'
                powershell 'getmac'
            }
        }
        stage('ALL_UFT Automation Run') {
            agent { 
                label "Agent_Win10"
            }
            steps {
                powershell 'dir'
                powershell 'mkdir suman'
                powershell 'dir'
            }
        }
    }
}
