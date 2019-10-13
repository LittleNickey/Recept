$CSV = Import-Csv -Delimiter ";" -Path C:\GIT\Recept\food.csv -Encoding Unicode

$BaseArray = $CSV.Base | Select -Unique | ? {$_ -ne "na"}
$WeeklyBaseArray = {$BaseArray}.Invoke()

1..7 | % {
    $i = $_
    $BaseToday = $WeeklyBaseArray | Get-Random
    $WeeklyBaseArray.Remove($BaseToday) | Out-Null

    if ($i -ne 5 -or $i -ne 6) {$Foods = $CSV | ? {$_.Days -eq $null}}
    else {$Foods = $CSV}
    $FoodToday = $Foods | ? {$_.Base -eq $BaseToday} | Get-Random
    $Foods
    $_
    $FoodToday
}