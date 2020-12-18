import math
import timeit
proc IsPrime(num : int64): bool  =
    if num < 2:
        result = false
        return
    if num == 2:
        result = true
        return
    result = true
    for i in 3 .. 1 + math.ceil(math.sqrt(num.toBiggestFloat())).toBiggestInt():
        if (num mod i) == 0:
            result = false
            break

proc IsPrime2(num : int64): bool  =
    if num < 2:
        result = false
        return
    if num == 2:
        result = true
        return
    result = true
    for i in countup[int64](3, 1 + math.ceil(math.sqrt(num.toBiggestFloat())).toBiggestInt(), 2):
        if (num mod i) == 0:
            result = false
            break

timeGo(7,1):
  echo IsPrime(2)

timeGo(7,1):
  echo IsPrime2(2)


             