# Type this in power shell

$ip = "ip address to ping its port"
1..65535 | ForEach-Object {
    $port = $_
    $result = Test-NetConnection -ComputerName $ip -Port $port
    if ($result.TcpTestSucceeded) {
        Write-Host "Port $port is open on $ip"
    }
}
