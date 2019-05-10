pipeline {
    agent any 
    stages {
        stage('Build')
            agent {
                label "Node_35"
            }
            steps {
                powershell 'ipconfig'
            }
        }
    }
}
