[CmdletBinding()]
Param(
  [Parameter(Mandatory = $False)]
 [String]
  $ExportPath 
)

$filepath=""
#$Name="c:\temp"
#write-output "first line"
if ($ExportPath -eq $null -or $ExportPath -eq "") {
  $filepath="c:\temp\heapdump$(get-date -f yyyyMMdd_HHmmss).hprof"
} else {
 $filepath="$ExportPath\newheapdump$(get-date -f yyyyMMdd_HHmmss).hprof"
}

$procid=get-process "Tomcat8" |select -expand id
cd "C:\Program Files\Java\jdk1.8.0_202\bin"
.\jmap.exe -dump:format=b,file=$filepath $procid 

