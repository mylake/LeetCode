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

def depth(root)
    return 0 unless root
    return 1 + [depth(root.left), depth(root.right)].max
end

def is_balanced(root)
    return true unless root

    if root.left == nil && root.right == nil
        return true
    end
    
    return false if (depth(root.left)-depth(root.right)).abs > 1

    return is_balanced(root.left) && is_balanced(root.right)
end