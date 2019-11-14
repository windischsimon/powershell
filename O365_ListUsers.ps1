$cred = Import-Clixml "userdirectory\o365Credential.xm"
Connect-MsolService -Credential $cred

Get-MsolUser | Select * | Export-CSV outputdirectory\o365users.csv