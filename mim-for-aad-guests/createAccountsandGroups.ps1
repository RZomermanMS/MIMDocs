$MimInstallPwd = ConvertTo-SecureString "<password>" –asplaintext –force
$MIMMAPwd = ConvertTo-SecureString "<password>" –asplaintext –force
$MIMPoolPwd = ConvertTo-SecureString "<password>" –asplaintext –force

Import-Module ActiveDirectory

#User to be used to install MIM and SharePoint
New-ADUser –SamAccountName MIMINSTALL –name MIMINSTALL
Set-ADAccountPassword –identity MIMINSTALL –NewPassword $MimInstallPwd
Set-ADUser –identity MIMINSTALL –Enabled 1 

#New user for the MIM Management agent – creating the users in AD
New-ADUser –SamAccountName MIMMA –name MIMMA
Set-ADAccountPassword –identity MIMMA –NewPassword $MIMMAPwd
Set-ADUser –identity MIMMA –Enabled 1 –PasswordNeverExpires 1

#New user for the SharePoint website Pool Account
New-ADUser –SamAccountName MIMpool –name MIMpool
Set-ADAccountPassword –identity MIMPool –NewPassword $MIMPoolPwd
Set-ADUser –identity MIMPool –Enabled 1 -PasswordNeverExpires 1
