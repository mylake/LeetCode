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
def reverse_list(head)
    prev = nil
    while (head) do
        temp = head.next
        head.next = prev
        prev = head
        head = temp
    end
    return prev
end