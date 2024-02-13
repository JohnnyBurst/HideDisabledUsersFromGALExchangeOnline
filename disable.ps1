Connect-ExchangeOnline
Get-User -RecipientTypeDetails UserMailbox | where {$_.UseraccountControl -like “*accountdisabled*”} | set-mailbox -HiddenFromAddressListsEnabled $true
