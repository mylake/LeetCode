# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    if nums.uniq.length == nums.length
        return false
    else
        return true
    end
end