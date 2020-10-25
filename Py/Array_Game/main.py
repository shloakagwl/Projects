def minMoves(nums):
  return sum(nums) - min(nums) * len(nums)

TestCase:1 O/P:7
nums = [3,4,6,6,3]

TestCase:2 O/P:7
nums = [5,6,8,8,5]

TestCase:3 O/P:0
nums = [2,2,2]

print(minMoves(nums))
