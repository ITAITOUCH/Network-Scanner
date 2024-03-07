# Simple Network Scanner
$localSubnet = "<Enter your IP>"
For ($i = 1; $i -le 254; $i++) {
    $ip = "$localSubnet.$i"
    If (Test-Connection -ComputerName $ip -Count 1 -Quiet) {
        Write-Output "$ip is up."
    }
}
