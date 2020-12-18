import os
import strformat

proc search_env*(search : string = "") =
  #[ Search by key in env / or print out all env vars]#
  if search == "":
    for key, val in os.envPairs():
      echo fmt("{key} : {val}")
  else:
    if existsEnv(search):
      echo fmt("{search} : {getEnv(search)}")
    else:
      echo fmt("No such variable: {search}")

when isMainModule:
  search_env("HOME2") 
  search_env("HOME") 
  search_env()

