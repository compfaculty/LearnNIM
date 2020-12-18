import tables

var cache = initTable[int64, int64]()

proc fibo(n: int64): int64 =
    if n <= 1:
        return 1
    if cache.hasKey(n):
        return cache[n]
    else:
        cache[n] = n * fibo(n - 1)
    return cache[n]

when isMainModule:
    echo fibo(20) #stack overflow is coming... 
