# Terraform in Windows

https://medium.com/@bansaladi/install-terraform-in-windows-in-2-minutes-with-only-2-commands-ea19fa318c7

How to install it:

# Install Chocolatey
Open CMD using “Run as Administrator” and run this command:

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

# Type this command to install terraform:

$ choco install terraform

# Check whether it is installed or not:

$ terraform -help
