import osproc
import strutils
import strformat
# var
#   iface = "eth0"  
#   cmd = &"/usr/bin/bash -c 'ip addr show | grep {iface}'"  
# var result = execCmdEx(cmd)
# stripLineEnd(result[0]) ## portable way to remove trailing newline, if any
# echo result[0]
# proc run(target : string): return string =
  # var cmd = &"/usr/bin/bash -c 'ip addr show | grep {target}'"
proc run(t : string): string =
  var cmd = &"nmap -sV {t}"
  var r = execCmdEx(cmd)
  stripLineEnd(r[0])
  result = r[0]
  # stripLineEnd(result[0])
  
when isMainModule:
  echo run("localhost")    