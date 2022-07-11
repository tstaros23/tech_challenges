def two_sum(nums,target)
  hash = Hash.new
  nums.each_with_index do |item,index|
    difference = target - item
    if nums.uniq.length == nums.length
      if nums.include?(difference) && item != difference
        x = nums.find_index(difference)
        hash[index] = item
        hash[x] = difference
      end
    elsif
      # nums[index].pop      # nums[index].pop

      hash[index] = item
      nums.delete_at(index)
      hash[x] = difference
    end
  end
  hash.keys
end

nums = [3,3]
target = 6

p two_sum(nums,target)
# nums[1] + nums[2] == 9, we return [0,1]
# how do we determine which values are going to add up to the target?
# how do we keep track?
# what if we we substracted the first index value from the target and check the rest of the array values to see if any of the equal it?
# if they do, then output the indices of those elements
# if item + item2 == target, then store index
# you can store using a hash. key is index. value is the value
# hash = { 1 => 4, 2 => 5 } start at first item.

# index is 0, item is 1
# find difference is equal to 8
# differnce is not in the array. so move to next element
