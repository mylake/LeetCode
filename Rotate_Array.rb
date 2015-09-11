# Rotate an array of n elements to the right by k steps.
#
# For example, with n = 7 and k = 3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.

require 'pry'
def rotate(nums, k)
  nums.rotate!(-k)
  return nil
  # nums_length = nums.length
  # left_index = nums_length - k
  # (nums[left_index..nums_length] << nums[0..left_index-1]).flatten
  # return nil
end
nums = [1,2]
puts nums.to_s
puts "----"
rotate(nums, 1)
puts nums.to_s
