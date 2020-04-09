<# : chooser.bat
@echo off 
set /p _songlength= Enter song length (Syntax: mm:ss):
set /p _tracknum= Enter track number:
setlocal

for /f "delims=" %%I in ('powershell -noprofile "iex (${%~f0} | out-string)"') do (
	start "" cmd /b /c "echo. | sidplayfp -o"%_tracknum%" -t"%_songlength%" -f96000 -wmaster %%~I 2>NUL"
	start "" cmd /b /c "echo. | sidplayfp -o"%_tracknum%" -t"%_songlength%" -f96000 -wch1 -u2 -u3 %%~I 2>NUL"
	start "" cmd /b /c "echo. | sidplayfp -o"%_tracknum%" -t"%_songlength%" -f96000 -wch2 -u1 -u3 %%~I 2>NUL"
	start "" cmd /b /c "echo. | sidplayfp -o"%_tracknum%" -t"%_songlength%" -f96000 -wch3 -u2 -u1 %%~I 2>NUL"
)
goto :EOF

: end Batch portion / begin PowerShell hybrid chimera #>

Add-Type -AssemblyName System.Windows.Forms
$f = new-object Windows.Forms.OpenFileDialog
$f.InitialDirectory = pwd
$f.Filter = "Commodore 64 SID Files (*.sid)|*.sid|All Files (*.*)|*.*"
$f.ShowHelp = $true
$f.Multiselect = $true
[void]$f.ShowDialog()
if ($false) { $f.FileNames } else { $f.FileName }
