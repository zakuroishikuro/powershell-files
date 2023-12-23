# ./modules/ 配下のモジュールを読み込む
Get-ChildItem "$PSScriptRoot\modules" -Filter *.psm1 | ForEach-Object { Import-Module $_.FullName }

Set-Alias open explorer.exe
Set-Alias which where.exe

Set-Alias json ConvertTo-Json
Set-Alias csv ConvertTo-Csv
Set-Alias xml ConvertTo-Xml
Set-Alias html ConvertTo-Html

function prompt() {
  "$(clockEmojiNow) $((Get-Location).Path.Replace($HOME, "~"))> "
}