class Solution:
    def findMinArrowShots(self, points: List[List[int]]) -> int:
        if (len(points) == 0):
            return 0
        
        points.sort(key = lambda x : x[1])
        
        count = 1
        cur = points[0]
        
        for i in range(len(points)):
            if cur[1] < points[i][0]:
                count += 1
                cur = points[i]
                
                
        return count
            
s = Solution()

#Test case 1  O/p = 2
points = [[10,16],[2,8],[1,6],[7,12]]

#Test case 2  O/p = 4
points = [[1,2],[3,4],[5,6],[7,8]]

#Test case 3  O/p = 2
points = [[1,2],[2,3],[3,4],[4,5]]

#Test case 4  O/p = 1
points = [[1,2]]

#Test case 5  O/p = 1
points = [[2,3],[2,3]]

print(s.findMinArrowShots(points))
