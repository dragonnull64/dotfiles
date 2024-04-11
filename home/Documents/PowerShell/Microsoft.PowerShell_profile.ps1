# Import
Import-Module PSReadLine

# Keybind
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function DeleteCharOrExit
Set-PSReadLineKeyHandler -Key "Ctrl+u" -Function BackwardDeleteLine
Set-PSReadLineKeyHandler -Key "Ctrl+k" -Function ForwardDeleteLine
Set-PSReadLineKeyHandler -Key "Ctrl+a" -Function BeginningOfLine
Set-PSReadLineKeyHandler -Key "Ctrl+e" -Function EndOfLine
Set-PSReadLineKeyHandler -Key "Ctrl+f" -Function ForwardChar
Set-PSReadLineKeyHandler -Key "Ctrl+b" -Function BackwardChar
Set-PSReadLineKeyHandler -Key "Alt+f" -Function NextWord
Set-PSReadLineKeyHandler -Key "Alt+b" -Function BackwardWord
Set-PSReadLineKeyHandler -Key "Ctrl+p" -Function PreviousHistory
Set-PSReadLineKeyHandler -Key "Ctrl+n" -Function NextHistory
Set-PSReadLineKeyHandler -Key "Tab" -Function MenuComplete

# Starship
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"

function Invoke-Starship-PreCommand {
    $host.ui.RawUI.WindowTitle = "Powershell : $pwd `a"
  }

Invoke-Expression (&starship init powershell)