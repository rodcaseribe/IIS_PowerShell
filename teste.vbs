Set CmdShell=Wscript.CreateObject("Wscript.Shell")

CmdShell.Run "runas /noprofile /user:administrator ""powershell.exe -noexit -command C:\teste1.ps1""""

Wscript.Sleep 100

CmdShell.SendKeys “TSCL@#1951!~”

Wscript.Quit