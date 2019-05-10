pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                label "Octopus"
			}
		}
	}
			steps {
                echo 'Hello World'
			}
}
