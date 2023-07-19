def remove_element(nums, val)
  nums.delete(val)
  nums.size
end

nums = [0,1,2,2,3,0,4,2]
val = 2
# => [0,1,3,0,4]

p remove_element(nums, val)
