# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

N_BYTES = [42].pack('i').size
N_BITS = N_BYTES * 8
MAX = 2 ** (N_BITS - 2) - 1
    
def merge_two_lists(l1, l2)
    head = ListNode.new(-1)
    p = head
    
    while l1 || l2 do
        if l1
            v1 = l1.val
        else
            v1 = MAX
        end
        
        if l2
            v2 = l2.val
        else
            v2 = MAX
        end
        
        if  v1 < v2
            p.next = l1
            l1 = l1.next
        else
            p.next = l2
            l2 = l2.next
        end
        p = p.next
    end
    p = head.next
    p
end