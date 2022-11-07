import std/net
import browsers
import std/logging

var logger = newConsoleLogger(fmtStr="$time - $levelname: ")
let socket = newSocket()
# let ctx = SslContext()
# ctx.wrapSocket(socket)
socket.connect("nemain.rfn.ru", Port(80))
logger.log(lvlInfo, socket.getLocalAddr())
logger.log(lvlInfo, getPrimaryIPAddr())
logger.log(lvlInfo, parseIpAddress("127.0.0.1"))
