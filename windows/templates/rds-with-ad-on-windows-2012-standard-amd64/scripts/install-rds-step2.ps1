# Must be a strong password
$password = ConvertTo-SecureString -AsPlainText -Force "V@grant"
# Must be FQDN
$domain = "example.com"

# AD: Restart required to do this
Install-ADDSForest -DomainName $domain -SafeModeAdministratorPassword $password -Force

# Create RDS deployment on this server
$fqdn = "rds.example.com"
New-RDSessionDeployment -ConnectionBroker $fqdn -WebAccessServer $fqdn -SessionHost $fqdn

