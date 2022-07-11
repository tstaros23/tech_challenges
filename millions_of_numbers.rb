

nums_1 = [1, 2, 4, 5, 8]
nums_2 = [2, 3, 5, 7, 9]
nums_3 = [1, 2, 5, 8, 9]

def find_matches(nums_1, nums_2, nums_3)
  h = Hash.new(0)
  a = [nums_1, nums_2, nums_3]
  nums = a.flatten!
  nums.each do |num|
    h[num] += 1
  end
  h.select do |k,v|
    k if v == 3
  end.keys
end

print find_matches(nums_1, nums_2, nums_3)
