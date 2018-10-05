$upit_port = Read-Host "Unesite broj lokalnog porta"
$port_u_proces = (Get-NetTCPConnection -LocalPort $upit_port -ErrorAction SilentlyContinue).OwningProcess 
try {
Get-Process -Id $port_u_proces 
}
catch{
Write-Output "Port nije otvoren"  
}
