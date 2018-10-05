$korisnik_greska=(Get-EventLog -LogName "System" -Newest 1 -EntryType Error).UserName
$racunalo_greska=(Get-EventLog -LogName "System" -Newest 1 -EntryType Error).MachineName
$id_greske=(Get-EventLog -LogName "System" -Newest 1 -EntryType Error).EventID
$vrijeme_pogreske = (Get-EventLog -LogName "System" -Newest 1 -EntryType Error).TimeGenerated
ConvertTo-Html -Title " Izvještaj o greškama" -Head "<h1 style='margin-left : 500px;'> Izvještaj o greški</h1>" -Body "<table style= 'border : 1px solid red; width:700px;margin-left : 300px;margin-top:100px'>
<tr><th>Korisnik</th> <th>Naziv računala</th> <th>ID greške</th> <th>Vrijeme greške</th></tr>
<tr style='text-align:center;vertical-align:middle;'><td>-$korisnik_greska-</td> <td> $racunalo_greska </td><td> $id_greske</td> <td> $vrijeme_pogreske</td> </tr>
"| Out-File C:\skripte\izvjestaj.html
