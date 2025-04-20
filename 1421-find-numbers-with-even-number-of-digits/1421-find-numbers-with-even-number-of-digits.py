class Solution(object):
    def findNumbers(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        output = 0
        for i in nums:
            if len(str(i)) %2 ==0:
                output +=1
        return output
            

        