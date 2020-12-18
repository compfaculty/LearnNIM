import parseutils
let logs = @["2019-01-10: OK_", "2019-01-11: FAIL_", "2019-01: aaaa"]
var outp: seq[string]

for log in logs:
  var res: string
  if parseUntil(log, res, ':') == 10: # YYYY-MM-DD == 10
    outp.add(res & " - " & captureBetween(log, ' ', '_'))
# doAssert outp == @["2019-01-10 - OK", "2019-01-11 - FAIL"]
echo outp

