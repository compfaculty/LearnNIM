import osproc
import strutils
import strformat
var
  iface = "ens33"  
  cmd = &"/usr/bin/bash -c 'ip addr show | grep {iface}'"  
var result = execCmdEx(cmd)
stripLineEnd(result[0]) ## portable way to remove trailing newline, if any
echo result[0]
