class Solution:
    def findMin(self, nums: List[int]) -> int:
        low = 0
        high = len(nums)-1
        while(low<high):
            pivot = low + (high - low)//2
            if(nums[pivot] < nums[high]):
                high = pivot
            elif(nums[pivot] > nums[high]):
                low = pivot + 1
            else:
                high -= 1
        return nums[low]

s = Solution()

#TestCase1 O/P = 1
[1,3,5]

#TestCase1 O/P = 0  
[2,2,2,0,1]
