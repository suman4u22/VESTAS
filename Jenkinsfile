pipeline { 
    stages {
        agent windows_35
        stage('VM Deploy') { 
            steps { 
                powershell 'ipconfig'
            }
        }
        stage('VOB Deploy'){
            agent Octopus
            steps {
                powershell 'hostname'
            }
        }
    }
}
