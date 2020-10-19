class Solution:
    def minDominoRotations(self, A: List[int], B: List[int]) -> int:
        
        if(not A or not B or len(A) == 0 or len(B) == 0 or len(A) != len(B)):
            return -1

        n = len(A)
        cntA = [0] * 7
        cntB = [0] * 7
        cntSame = [0] * 7
        
        for i in range(n):
            a, b = A[i], B[i]
            cntA[a] += 1
            cntB[b] += 1
            if a == b: 
                cntSame[a] += 1
        
        ans = n
        for v in range(1, 7):
            if cntA[v] + cntB[v] - cntSame[v] == n:
                minSwap = min(cntA[v], cntB[v]) - cntSame[v]
                ans = min(ans, minSwap)
        
        return -1 if ans == n else ans

s = Solution()

#Testcase1 O/P = 2
A = [2,1,2,4,2,2], B = [5,2,6,2,3,2]

#Testcase1 O/P = -1
A = [3,5,1,2,3], B = [3,6,3,3,4]

print(s.minDominoRotations(A,B))
