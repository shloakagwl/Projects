class Solution:
    def summaryRanges(self, nums: List[int]) -> List[str]:
        s = "->"
        ans = []
        res = ''
        flag = True
        for i in range (0,len(nums)):
            if i == len(nums)-1:
                if flag:
                    ans.append(str(nums[i]))
                    break
                else:
                    res += str(nums[i])
                    ans.append(res)
                    break
                
            if(abs(nums[i+1]-nums[i]) == 1):
                if flag:
                    res += str(nums[i])+s
                    flag = False
                else:
                    continue
            else:
                flag = True
                res += str(nums[i])
                ans.append(res)
                res = ''
        return ans
