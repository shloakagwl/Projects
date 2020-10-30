class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        dic = {}
        for i in range(len(nums)):
            if nums[i] in dic.keys():
                dic[nums[i]] += 1
            else:
                dic[nums[i]] = 1
        dic = dict(sorted(dic.items(), key=lambda x: x[1], reverse=True))
        lst = list(dic.keys())
        return (lst[:k])
        
