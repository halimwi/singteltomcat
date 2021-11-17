[CmdletBinding()]
#Param(
#  [Parameter(Mandatory = $False)]
#)

$lastrestart= (Get-EventLog -LogName "System" -Source "Service Control Manager" -EntryType "Information" -Message "*Tomcat*running*" -Newest 1).TimeGenerated;
Write-Output("Tomcat service was last restarted on $lastrestart GMT")
Write-Output("Restarting Tomcat Service") 
restart-service -name Tomcat8
get-service -name Tomcat8
Start-Sleep -s 3
$lastrestartnew= (Get-EventLog -LogName "System" -Source "Service Control Manager" -EntryType "Information" -Message "*Tomcat*running*" -Newest 1).TimeGenerated;
Write-Output("Tomcat service was last restarted on $lastrestartnew GMT")
