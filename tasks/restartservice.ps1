[CmdletBinding()]
#Param(
#  [Parameter(Mandatory = $False)]
#)

$lastrestart= (Get-EventLog -LogName "System" -Source "Service Control Manager" -EntryType "Information" -Message "*Tomcat*running*" -Newest 1).TimeGenerated;
Write-Output("Tomcat service was last restart on $lastrestart") 
restart-service -name Tomcat8
get-service -name Tomcat8
