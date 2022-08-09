$input = 'ping-test.csv'
$output = 'ping-result.csv'

Import-CSV ping-test.csv | ForEach-Object {

$result = (Test-NetConnection -ComputerName $($_.Hostname)).PingSucceeded

Add-Content -Path $output "$($_.Hostname),$result"

}
