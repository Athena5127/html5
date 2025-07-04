param([string]$file)
Add-Type -AssemblyName System.Web
$encoded = [System.Web.HttpUtility]::UrlEncode($file)
Start-Process "obsidian://advanced-uri?filepath=$encoded&vault=HTML5"
exit
