pipeline { 
    agent none
    stages {
        stage('VM Deploy') { 
            agent { 
                label "master"
            }
            steps { 
                powershell 'ipconfig'
                powershell 'nslookup'
                vSphere buildStep: [$class: 'PowerOn', timeoutInSeconds: 0], serverName: 'VSphere'
            }
        }
    }
}
