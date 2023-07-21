# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def array_make(data)
  current = data
  array = []
  while current
    array << current.val
    current = current.next
  end
  array
end

def add_two_numbers(l1, l2)
  result = array_make(l1).reverse.join.to_i + array_make(l2).reverse.join.to_i
  array = []
  array = result.to_s.split("").reverse.map(&:to_i)
  array
end

# Runtime: 144 ms, Beats: 7.8%
# Memory: 211 MB, Beats: 51.33%
