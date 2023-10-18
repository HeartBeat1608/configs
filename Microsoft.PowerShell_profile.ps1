Import-Module PSColor

# try { $null = gcm pshazz -ea stop; pshazz init 'default' } catch { }
# try { oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/catppuccin_mocha.omp.json" | Invoke-Expression } catch { }

iex (starship init powershell)
Enable-TransientPrompt

# workspace and path aliases
function workspace { cd D:\workspace }
function tiffy { cd D:\tiffy }

# utilitiy and compatibility aliases
function touch { New-Item $args }
function http { python -m http.server $args }

# python command/workspace utilities
function source { & .\.venv\Scripts\Activate.ps1 }
function makevenv { python -m virtualenv .venv }