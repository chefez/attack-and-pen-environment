
## ADD COMPUTER TO DOMAIN VIA POWERSHELL
Add-Computer -DomainName DomainName -Restart

## event viewer script
https://eventlogxp.com/blog/exporting-event-logs-with-windows-powershell/

## ADD USERS BATCH
https://sid-500.com/2017/09/28/powershell-adding-active-directory-users-from-text-files-bulk/

## EXECUTE SCRIPTS
https://stackoverflow.com/questions/4037939/powershell-says-execution-of-scripts-is-disabled-on-this-system

## XP UPDATE
https://www.catalog.update.microsoft.com/Search.aspx?q=SP3+XP

## INSTALL AD
```
Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools 

#This will prompt you to create a password for Directory Services Restore Mode. Make it and strong password and don't forget it.
Install-ADDsForest -DomainName "group4.local" 

Restart-Computer
```
