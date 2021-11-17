[CmdletBinding()]
Param(
  [Parameter(Mandatory = $False)]
 [String]
  $Name 
)

if ($Name -eq $null -or $Name -eq "") {
  $filepath="c:\temp\heapdump$(get-date -f yyyyMMdd_HHmmss)"
} else {

$procid=get-process "Tomcat8" |select -expand id
cd "C:\Program Files\Java\jdk1.8.0_202\bin"
.\jmap.exe -dump:format=b,file=$filepath $procid
}
