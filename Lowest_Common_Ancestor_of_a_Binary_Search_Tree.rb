# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
    return nil if (!root || !p || !q)
    
    if ((p.val - root.val) * (q.val - root.val) <= 0 )
        return root.val
    elsif p.val > root.val
        lowest_common_ancestor(root.right, p, q)
    elsif q.val < root.val
        lowest_common_ancestor(root.left, p, q)
    end
        
end