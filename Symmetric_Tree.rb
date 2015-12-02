# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}

def is_sym(left, right)
    return right == nil if left == nil
    return left == nil if right == nil
    return false if (left.val != right.val)
    return false unless (is_sym(left.left, right.right))
    return false unless (is_sym(left.right, right.left))
    return true
end

def is_symmetric(root)
    return true unless root
    return is_sym(root.left, root.right)
end