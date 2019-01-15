$filename = "G:\food.txt"
$garniture = "Spagetti", "Makaroner", "Bandpasta", "Potatis", "Ris", "Pommes"
$WeekDays = "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"

$Monday = ""
$Tuesday = ""
$Wednesday = ""
$Thursday = ""
$Friday = ""
$Saturday = ""
$Sunday = ""
$Week = $Monday, $Tuesday, $Wednesday, $Thursday, $Friday, $Saturday, $Sunday

$Monday = Get-Content $filename | Get-Random
Write-Host "Monday: $Monday"

$Tuesday = Get-Content $filename | Get-Random
while($Tuesday -like $Monday){
	$Tuesday = Get-Content $filename | Get-Random
}
Write-Host "Tuesday: $Tuesday"

$Wednesday = Get-Content $filename | Get-Random
while($Wednesday -like $Monday -or $Wednesday -like $Tuesday){
	$Wednesday = Get-Content $filename | Get-Random
}
Write-Host "Wednesday: $Wednesday"

$Thursday = Get-Content $filename | Get-Random
while($Thursday -like $Monday -or $Thursday -like $Tuesday -or $Thursday -like $Wednesday){
	$Thursday = Get-Content $filename | Get-Random
}
Write-Host "Thursday: $Thursday"

$Friday = Get-Content $filename | Get-Random
while($Friday -like $Monday -or $Friday -like $Tuesday -or $Friday -like $Wednesday -or $Friday -like $Thursday){
	$Friday = Get-Content $filename | Get-Random
}
Write-Host "Friday: $Friday"

$Saturday = Get-Content $filename | Get-Random
while($Saturday -like $Monday -or $Saturday -like $Tuesday -or $Saturday -like $Wednesday -or $Saturday -like $Thursday -or $Saturday -like $Friday){
	$Saturday = Get-Content $filename | Get-Random
}
Write-Host "Saturday: $Saturday"

$Sunday = Get-Content $filename | Get-Random
while($Sunday -like $Monday -or $Sunday -like $Tuesday -or $Sunday -like $Wednesday -or $Sunday -like $Thursday -or $Sunday -like $Friday -or $Sunday -like $Saturday){
	$Sunday = Get-Content $filename | Get-Random
}
Write-Host "Sunday: $Sunday"