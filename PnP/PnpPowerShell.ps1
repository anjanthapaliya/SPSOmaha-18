Install-Module SharePointPnPPowerShellOnline

Update-Module SharePointPnPPowerShell*

$creds = Get-Credential

#Get-Command -Module *PnP*

Connect-PnPOnline –Url https://sharepointknight.sharepoint.com/sites/template –Credentials $creds

Get-PnPProvisioningTemplate -Out c:\\Demos\\PnP\\template\\template.xml -PersistBrandingFiles

Connect-PnPOnline -Url https://sharepointknight.sharepoint.com/sites/receiver1 -Credentials $creds

Apply-PnPProvisioningTemplate -Path c:\\Demos\\PnP\\template\\template.xml