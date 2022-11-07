import std/strscans
import std/streams
import std/parseopt
import parseutils
import strformat

iterator parseIps*(soup: string): string =
  ## ipv4 only!
  const digits = {'0'..'9'}
  var a, b, c, d: int
  var buf = ""
  var idx = 0
  while idx < soup.len:
    if scanp(soup, idx, (`digits`{1,3}, '.', `digits`{1,3}, '.',
             `digits`{1,3}, '.', `digits`{1,3}) -> buf.add($_)):
      discard buf.scanf("$i.$i.$i.$i", a, b, c, d)
      if (a >= 0 and a <= 254) and
         (b >= 0 and b <= 254) and
         (c >= 0 and c <= 254) and
         (d >= 0 and d <= 254):
        yield buf
    buf.setLen(0) # need to clear `buf` each time, cause it might contain garbage
    idx.inc  

when isMainModule:
  var p = initOptParser()
  while true:
    p.next()
    case p.kind
    of cmdEnd: break
    of cmdShortOption, cmdLongOption: break    
    of cmdArgument: break

  let f =  p.key
  var strm = newFileStream(f, fmRead)
  var line = ""
  if not isNil(strm):
    while strm.readLine(line):
      for ip in parseIps(line):
        echo ip
    strm.close()
  else:
    echo fmt("looks there is an issue with your file: {f}, check typos/path ")  

    