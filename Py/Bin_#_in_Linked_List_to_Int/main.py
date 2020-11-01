# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def getDecimalValue(self, head: ListNode) -> int:
        #Aproach: 1
        count = 0
        temp = head
        while(temp):
            count += 1
            temp = temp.next
            
        count -= 1
        bin_to_int = 0
        
        while(head):
            if(head.val):
                bin_to_int += (2**count)
            count -= 1
            head = head.next
            
        return bin_to_int
        
        '''
        Aproach: 2
        num = head.val
        while head.next:
            num = num * 2 + head.next.val
            head = head.next
        return num
        '''
        '''
        Aproach: 3
        num = head.val
        while head.next:
            num = (num << 1) | head.next.val
            head = head.next
        return num
        '''
