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
                vSphere buildStep: [$class: 'Clone', clone: 'VOB_Win10_CICD_pipeline', cluster: 'CLUSTER_G9', customizationSpec: '180', datastore: '', folder: '', linkedClone: false, powerOn: false, resourcePool: 'datastore1', sourceName: 'VOB_Win10_Template', timeoutInSeconds: 60], serverName: 'VSphere'

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
                powershell 'rmdir suman'
                powershell 'mkdir suman'
                powershell 'dir'
            }
        }
    }
}
