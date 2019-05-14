pipeline { 
    agent none
    stages {
        stage('VM Deploy') { 
            agent { 
                label "Agent_Win10"
            }
            steps { 
                powershell 'ipconfig'
                Get-Service | Where-Object {$_.Status –eq “Running”}
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
