[CmdletBinding()]
Param(
  [Parameter(Mandatory = $False)]
)


$procid=get-process "Tomcat8" |select -expand id
cd "C:\Program Files\Java\jdk1.8.0_202\bin"
.\jstack.exe $procid 

