class Solution:
    def buddyStrings(self, A: str, B: str) -> bool:
        if(len(A) != len(B) or A == "" or B == ""):
            return False
        
        if(A == B):
            seen = set()
            for a in A:
                if a in seen:
                    return True
                seen.add(a)
            return False
        
        indx = []
        
        for i in range(len(A)):
            if(A[i] == B[i]):
                continue
            else:
                indx.append(i)
                
        if(len(indx) == 2):
            temp_A = list(A)
            temp_A[indx[0]], temp_A[indx[1]] = temp_A[indx[1]], temp_A[indx[0]]
            A = ''.join(temp_A)
            if(A == B):
                return True
        
        return False
        
s = Solution()

#TestCase1 O/P = true
A = "ab", B = "ba"

#TestCase2 O/P = false
A = "ab", B = "ab"

#TestCase3 O/P = true
A = "aa", B = "aa"

#TestCase4 O/P = true
A = "aaaaaaabc", B = "aaaaaaacb"

#TestCase5 O/P = false
A = "", B = "aa"

print(s.buddyStrings(A,B))
