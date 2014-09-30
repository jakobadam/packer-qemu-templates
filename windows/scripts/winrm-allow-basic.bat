call winrm set winrm/config/client/auth @{Basic="true"}
call winrm set winrm/config/service/auth @{Basic="true"}
call winrm set winrm/config/service @{AllowUnencrypted="true"}