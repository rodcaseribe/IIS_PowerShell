(Get-NetFirewallRule -DisplayName "�rea de Transfer�ncia de Pilha WinSock" | Get-NetFirewallAddressFilter).RemoteAddress > C:\inetpub\wwwroot\ips_bloqueados.txt