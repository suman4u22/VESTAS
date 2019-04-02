echo "Connecting to 10.211.104.47"
$Server="10.211.104.47"
$User="Administrator"
$Password="only4YOU"
cmdkey /generic:TERMSRV/$Server /user:$User /pass:$Password
mstsc /v:$Server
