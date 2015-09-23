# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    duplicated_count = {}
    nums.delete_if do |num|
        duplicated_count[num] = duplicated_count[num].to_i + 1
        true if duplicated_count[num] > 2 
    end
    nums.length
end