powershell '''$env:OctopusURL = "http://10.211.104.31"
$env:OctopusAPIKey = "API-D4UCF6UL2Q2TPQHKYCBVVLMSXSG"

##CONFIG

$machineDisplayName = "MyTentacle31" #Name that the Tentacle will have in Octopus
$MachineRoles = "WebServer"#Roles of the Tentacle
$machineHostname = "10.211.104.31" #hostname of the Tentacle you want to add. This can either be the ComputerName of the IP address of the Tentacle machine.
$machineEnvironments = "Development","Staging" #Environment where this machine will be registered


##PROCESS
#Create an instance of a Machine Object
$machine = Get-OctopusResourceModel -Resource Machine

#Get Environment to use the ID to create the project
$environments = Get-OctopusEnvironment -EnvironmentName $machineEnvironments -ResourceOnly

#Add mandatory properties to the object
$machine.name = $machineDisplayName #Display name of the machine on Octopus

foreach($environment in $environments){
    $machine.EnvironmentIds.Add($environment.id)
}	
foreach ($role in $MachineRoles){
    $machine.Roles.Add($role)    
}
#Use the Discover API to get the machine thumbprint.
$discover = (Invoke-WebRequest "$env:OctopusURL/api/machines/discover?host=$machineHostname&type=TentaclePassive" -Headers (New-OctopusConnection).header).content | ConvertFrom-Json

$machineEndpoint = New-Object Octopus.Client.Model.Endpoints.ListeningTentacleEndpointResource
$machine.EndPoint = $machineEndpoint
$machine.Endpoint.Uri = $discover.Endpoint.Uri
$machine.Endpoint.Thumbprint = $discover.Endpoint.Thumbprint

New-OctopusResource -Resource $machine

'''
