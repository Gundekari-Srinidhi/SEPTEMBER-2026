class Solution:
    def minOperations(self, nums: list[int], x: int) -> int:
        pre = [1] * len(nums)
        pre[0] = nums[0]

        for i in range(1, len(nums)):
            pre[i] = pre[i - 1] + nums[i]

        suff = [1] * len(nums)
        suff[-1] = nums[-1]

        for i in range(len(nums) - 2, -1, -1):
            suff[i] = suff[i + 1] + nums[i]

        d = {}
        val = len(nums)
        p = -1
        s = -1

        for i in range(val):
            if pre[i] == x:
                p = i
            d[pre[i]] = i

        for j in range(val):
            if suff[j] == x:
                s = val - j

        ans = float('inf')

        if p != -1:
            ans = min(ans, p + 1)

        if s != -1:
            ans = min(ans, s)

        for j in range(val):
            t = x - suff[j]

            if t in d and d[t] < j:
                ans = min(ans, (d[t] + 1) + (val - j))

        if ans != float('inf'):
            return ans

        return -1