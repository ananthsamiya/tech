' Windows script to open putty shell without entering password
Set objShell = CreateObject("WScript.Shell")

'objShell.Run "putty -l sananth -pw harvey -load ubuntu"
objShell.Run "putty -l root -pw harvey -load ubuntu"

WScript.Sleep 1000

objShell.AppActivate "PuTTY"

objShell.SendKeys "tmuxx"

objShell.SendKeys "{ENTER}"

Set WshShell = Nothing
