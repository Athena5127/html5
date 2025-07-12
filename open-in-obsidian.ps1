param([string]$file)
Add-Type -AssemblyName System.Web
$encoded = [System.Web.HttpUtility]::UrlEncode($file)
start "" "obsidian://advanced-uri?filepath=$encoded&vault=HTML5"
