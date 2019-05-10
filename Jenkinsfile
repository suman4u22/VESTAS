pipeline { 
    agent any 
    stages {
        stage('Build') {
            agent {
                label 'Octopus'
            }
            steps { 
                powershell 'ipconfig'
            }
        }
        stage('Test'){
            agent {
                label 'Octopus_35'
            }
            steps {
                powershell 'hostname'
            }
        }
    }
}
