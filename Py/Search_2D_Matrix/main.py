class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        if(len(matrix) != 0):
            n = len(matrix)
        else:
            return False
        if(len(matrix[0]) != 0):
            m = len(matrix[0])
        else:
            return False
        target_row = -1
        for i in range(n):
            if(matrix[i][m-1] >= target):
                target_row = i
                break
        if(target_row == -1):
            return False
        l = 0
        r = m-1
        while l <= r: 
            mid = l + (r - l) // 2
            if matrix[target_row][mid] == target:
                return True
            elif matrix[target_row][mid] < target: 
                l = mid + 1
            else: 
                r = mid - 1
        return False

s = Solution()

#TestCase1 O/P:true
matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,50]], target = 3

#TestCase2 O/P:false
matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,50]], target = 13

#TestCase3 O/P:false
matrix = [], target = 0

print(s.searchMatrix(matrix,target))
