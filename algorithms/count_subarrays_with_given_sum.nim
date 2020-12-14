import tables

proc countSubArraysWithGivenSum*(sum: int, arr: openArray[int]) : int =
  var found = initTable[int, int]()
  for i in low(arr) .. high(arr):
    var cursum = arr[i]
    var j = i + 1
    while j < high(arr):
      cursum = cursum + arr[j]
      if found.hasKey(cursum - sum):
        inc found[cursum - sum]
      else:
        found[cursum - sum] = 1
      inc j
  result = found.getOrDefault(sum, 0)
