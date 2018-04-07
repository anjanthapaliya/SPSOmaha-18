$requestBody = Get-Content $req -Raw | ConvertFrom-Json

$destination = $requestBody.destination

Write-Output "Incoming request for '$destination'"
Connect-PnPOnline -AppId $env:SPO_AppId -AppSecret $env:SPO_AppSecret -Url $destination
Write-Output "Connected to site"
Apply-PnPProvisioningTemplate -Path D:\home\site\wwwroot\ApplyPnPProvisioningTemplate\DemoTemplate.xml