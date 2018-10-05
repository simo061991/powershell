$korisnickiUnos = Read-Host "Za sortiranje procesa prema opterećenosti procesora unesite CPU, prema identifikatoru ID ili KORISNIK za procese prema korisničkom imenu"
if($korisnickiUnos -eq "ID"){
    Get-Process | Sort-Object ID  
}
if ($korisnickiUnos -eq "CPU"){
    Get-Process | Sort-Object cpu  
}
if($korisnickiUnos -eq "KORISNIK"){
    $ImeKorisnika = Read-Host "Unesite ime korisnika"
    Get-Process -IncludeUserName | Where-Object {$_.UserName -match $ImeKorisnika}
}
$DrugiUnos = Read-Host "Kako bi poništili proces unesite naziv procesa"
try{
    Stop-Process -Name $DrugiUnos -ErrorAction Stop 
}
Catch{
    Write-Output "Upozorenje : Ne postoji proces s tim imenom!"
}
