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
                vSphere buildStep: [$class: 'Clone', clone: 'VOB_Win10_CICD_pipeline', cluster: 'CLUSTER_G9', customizationSpec: '180', datastore: '', folder: '', linkedClone: false, powerOn: false, resourcePool: 'DATASTORE1', sourceName: 'VOB_Win10_Template', timeoutInSeconds: 60], serverName: 'VSphere'
            }
        }
    }
}
