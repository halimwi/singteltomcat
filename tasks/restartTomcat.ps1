[CmdletBinding()]
#Param(
#  [Parameter(Mandatory = $False)]
#)

write-output "Restarting Tomcat service"
restart-service -name Tomcat8
get-service -name Tomcat8
