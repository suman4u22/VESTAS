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
                vSphere buildStep: [$class: 'Clone', clone: 'VOB_Win10_CICD_pipeline', cluster: 'CLUSTER_G9', customizationSpec: '180', datastore: 'datastore1', folder: '/', linkedClone: false, powerOn: false, resourcePool: 'CICD', sourceName: 'VOB_Win10_Template', timeoutInSeconds: 60], serverName: 'VSphere'
            }
        }
    }
}
