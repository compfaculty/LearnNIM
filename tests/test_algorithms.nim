import ../algorithms/count_subarrays_with_given_sum

var
  arr: array[7, int] = [1, 2, 3, 4, 7, -1, 6]
  



block:
  doAssert countSubArraysWithGivenSum(5, arr)  == 2
  doAssert countSubArraysWithGivenSum(0, arr)  == 0
