import os
var
  myfile = "/home/alexg/projects/fibo"
  storage= "/home/alexg/fibo"
  path : FileInfo = os.getFileInfo(myfile)
echo path.kind
echo path.permissions
echo path.creationTime
echo path.size

for k, v in os.envPairs():
    echo k, ":", v 

os.copyFileWithPermissions(myfile, storage)