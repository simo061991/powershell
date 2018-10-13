$tekst = Get-Content  -Path $putanja 
Write-Output "Kućište, 20x20, 24
Procesor, i7, 16
Napajanje, 400W, 13
-------------------------------------------
"
$unos = Read-Host "Dobro došli! `nZa unos novog predmeta - 0,`nZa promjenu postojećih predmeta - 1,`nZa brisanje predmeta - 2,`nZa brisanje cijelog dokumenta - 3"
$putanja = "C:\skripte\poddirektorij\predmeti.txt" 
if($unos -eq 0){
    $unosPredmeta = Read-Host "Unesite predmet u formatu: naziv, vrsta, ID"
    Add-Content -Path $putanja -Value  $unosPredmeta
    
}
if($unos -eq 1){
    $predmetPromjene = Read-Host "Unesite predmet na kojem želite promjenu u formatu: naziv, vrsta, ID"
    $NoviPredmet = Read-Host "Unesite novi promijenjeni predmet u formatu: naziv, vrsta, ID"
    foreach($rijec in $tekst){
        If ($rijec.Contains($predmetPromjene)){
            $tekst.Replace($predmetPromjene, $NoviPredmet) | Set-Content -Path $putanja
        }   
    }
}

if($unos -eq 2){
    $predmetBrisanja = Read-Host "Unesite predmet kojeg želite obrisati u formatu : naziv, vrsta, ID"
    foreach($rijec in $tekst){
        If ($rijec.Contains($predmetBrisanja)){
            $tekst.Replace($predmetBrisanja,"") | Set-Content -Path $putanja 
        }
    }
}   
if($unos -eq 3){
    Remove-Item   -Path $putanja
}
