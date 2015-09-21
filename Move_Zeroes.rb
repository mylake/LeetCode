# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    origin_length = nums.length
    nums.reject!{|element| element == 0}
    add_length = origin_length - nums.length
    add_length.times do
        nums.push(0)
    end
    return
end