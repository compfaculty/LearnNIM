import os
import system
import times
import strformat
  
proc printFileInfo(filePath : string, printout: bool = false, linesRead : int = 10) =
  
  try:
    let path : FileInfo = os.getFileInfo(filePath)
    
    let f_type = case path.kind:
      of PathComponent.pcFile:
        "Regular file"
      of PathComponent.pcLinkToFile:
        "Link to file"
      of PathComponent.pcLinkToDir:
        "Link to dir"
      of PathComponent.pcDir:
        "Directory"

    echo fmt("""
      Kind       : {f_type}
      Permissions: {path.permissions}
      Link count : {path.linkCount}
      Size       : {path.size}
      Creation   : {path.creationTime.format("yyyy-MM-dd H-m-s")}
      Last Access: {path.lastAccessTime.format("yyyy-MM-dd H-m-s")}
      Last Write : {path.lastWriteTime.format("yyyy-MM-dd H-m-s")}
    """)
    if printout:
      echo "FILE CONTENT >>>"
      for line in filePath.readLines(linesRead):
        echo line
      echo ".....more"
      echo "<<< FILE CONTENT"  
  except:
    echo getCurrentExceptionMsg()



when isMainModule:
  printFileInfo("/home/compf/owtf", false)

# os.copyFileWithPermissions(myfile, storage)

# var ppp : string = "/home/alexg/projects/lesson1.nim"
# for line in  ppp.readLines(n = 5):
#   echo line

# for line in  ppp.lines():
#   echo line
