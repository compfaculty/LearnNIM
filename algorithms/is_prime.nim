import math
import timeit
proc IsPrime(num : int64): bool  =
    result = true
    for i in 2 ..< 1 + math.ceil(math.sqrt(num.toBiggestFloat())).toBiggestInt():
        if (num mod i) == 0:
            result = false
            break

timeGo(7,1000000):
    discard IsPrime(999_999_999_999_999)


             