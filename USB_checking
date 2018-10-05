$provjera_usb = Get-Disk | ? -FilterScript { $_.BusType -match "USB"}
while ($true){
    Start-Sleep -s 10
    if($provjera_usb){
        $datum = Get-Date 
        $usb_velicina = $provjera_usb.Size/1GB 
        $usb_broj =  $provjera_usb.SerialNumber 
        Add-content -Path C:\skripte\poddirektorij\usb_provjera.txt -Value `n`n$datum, $usb_velicina, $usb_broj 
        Start-MpScan  -ScanType QuickScan -ScanPath $provjera_usb.Path 
    }
}
