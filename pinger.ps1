$ipAddress = Read-Host "Enter an Ip"

Start-Transcript -path C:/Script/PingLog.txt -Append
$pingCommand = 'Ping.exe -t $ipAddress'
Invoke-Expression $pingCommand | ForEach {"{0} - {1}" -f (Get-Date),$_}
