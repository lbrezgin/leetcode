require 'pry-byebug'
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
#1)
=begin
def two_sum(nums, target)
  nums.each_with_index do |num, i|
    ((i+1)...nums.length).each do |j|
      return [i, j] if (num + nums[j]) == target
    end
  end
end

p two_sum([3,2,4], 6)
=end
#2)

def two_sum(nums, target) 
  complement_hash = {}
  nums.each_with_index do |num, i|
    return [complement_hash[num], i] if complement_hash.key?(num)
    complement = target - num
    complement_hash[complement] = i
  end
end

p two_sum([3,2,4], 6) 
