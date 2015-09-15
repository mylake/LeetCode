# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
    return 0 unless root
    lmax = max_depth(root.left)
    rmax = max_depth(root.right)
    return [lmax, rmax].max + 1
end