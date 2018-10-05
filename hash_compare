$putanja1 = "C:\skripte\poddirektorij\predmeti.txt" 
$putanja2 = "C:\skripte\poddirektorij\predmeti2.txt" 

$hash1 = Get-FileHash -Path $putanja1 -AlgorithM 
$hash2 = Get-FileHash -Path $putanja2 -Algorithm MD5

if($hash1.Hash -match  $hash2.Hash){
    Write-Output "Dokumenti su jednaki, a njihov hash je: "  $hash1.Hash
}
else{
    Write-Output "Različiti dokumenti"
}
