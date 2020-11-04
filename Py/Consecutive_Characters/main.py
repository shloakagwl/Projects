class Solution:
    def maxPower(self, s: str) -> int:
        lst = list(s)
        res = []
        count = 1
        for i in range(0,len(lst)-1):
            if(lst[i] != lst[i+1]):
                res.append(count)
                count = 1
            else:
                count += 1
        res.append(count)
        return max(res)
