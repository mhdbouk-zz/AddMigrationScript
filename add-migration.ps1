function add-migration{
    [CmdletBinding()]
    #[nextNumber]_[date]-[time]_[username]
    $date = Get-Date -UFormat "%Y%m%d"
    $time = Get-Date -UFormat "%H%M%S"
    $nextCount = ( dir "." | Measure-Object).Count + 1
    $nextCountStr =  ("{0:0000}" -f [int]$nextCount)
    $fileName = $nextCountStr + "_" + $date + "_" + $time + "_" + $env:UserName + ".sql"
    New-Item -Path . -Name $fileName -ItemType "file"
}
