# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    return nil unless head
    current_node = head
    next_node = head.next
    
    while (next_node) do
        if next_node.val == current_node.val
            current_node.next = next_node.next
            next_node = next_node.next
        else
            current_node = next_node
            next_node = next_node.next
        end
    end

    return head
end