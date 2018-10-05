if(!(Test-Path -Path "C:\skripte\poddirektorij")){
    New-Item -Path "c:\skripte" -Name "poddirektorij" -ItemType directory
    New-Item -Path "c:\skripte\poddirektorij" -Name "primjer.txt" -ItemType file -Value "Lorem ipsum dolor sit amet, 
    consectetuer adipiscing elit. Quisque porta. Etiam dictum tincidunt diam."
 }
 else{
    Write-Output "Direktorij pod tim imenom postoji od: " (Get-ItemProperty  "c:\skripte\poddirektorij\primjer.txt").CreationTime
 }
