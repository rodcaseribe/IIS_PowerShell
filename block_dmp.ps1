$ip = (Get-SmbOpenFile | Where-Object { $_.ShareRelativePath -clike '*.dmp' } | Select ClientComputerName | findstr /i 192)
$ip = $ip -replace " ", ""
$all_ips = (Get-NetFirewallRule -DisplayName "Área de Transferência de Pilha WinSock" | Get-NetFirewallAddressFilter).RemoteAddress
$all_ips += $ip
Set-NetFirewallRule -DisplayName "Área de Transferência de Pilha WinSock" -Direction Inbound -Action Block -RemoteAddress $all_ips