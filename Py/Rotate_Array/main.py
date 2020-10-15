class Solution:
    def reverse(self, nums: list, start: int, end: int) -> None:
        while start < end:
            nums[start], nums[end] = nums[end], nums[start]
            start, end = start + 1, end - 1
                
    def rotate(self, nums: List[int], k: int) -> None:
        n = len(nums)
        k %= n

        self.reverse(nums, 0, n - 1)
        self.reverse(nums, 0, k - 1)
        self.reverse(nums, k, n - 1)
        
s = Solution()

#TestCase1 O/P = [5,6,7,1,2,3,4]
nums = [1,2,3,4,5,6,7], k = 3

#TestCase2 O/P = [3,99,-1,-100]
nums = [-1,-100,3,99], k = 2

print(s.rotate(nums))
