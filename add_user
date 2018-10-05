$imeKorisnika = Read-Host "Unesite ime novog korisnika"
$lozinka = Read-Host "Unesite lozinku" -AsSecureString
if($lozinka.Length -lt 1) {
  New-LocalUser -Name $imeKorisnika -Description "Primjer dodavanja korisnika"
}
else{
  New-LocalUser -Name $imeKorisnika -Password $lozinka -Description "Primjer dodavanja korisnika"
}
