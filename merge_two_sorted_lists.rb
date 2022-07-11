# [1,3,5], [2,4,6,8] -> [1,2,3,4,5,6,8]
# [1,3,5], [2,4,6] -> [1,2,3,4,5,6]
# [1,2,3], [4,5,6] -> [1,2,3,4,5,6]

# []

def merge_sorted(l1,l2)
  j = 0
  l3 = []
  while !l1.empty? && !l2.empty? do
    if l1[0] < l2[0]
      l3.push(l1.shift)
    else
      l3.push(l2.shift)
    end
  end
  return l3.concat(l1).concat(l2)
end
p merge_sorted([1,3,5], [1,2,4,6, 7])


def merge_sorted_2(l1,l2)
  j = 0
  l3 = []
  l1.each_with_index do |item, index|
    item2 = l2[j]
      if item < item2
        l3 << item
      else item2 > item
          l3 << item2
          l3 << item
          j += 1
      end
  end
  l3 << l2.pop(l1.length - 1)
  l3.flatten
end

p merge_sorted_2([1,3,5], [1,2,4,6, 7])



#lists are being combined into one array and then are sorted numerically. 1234
#empty arrays return an array when merged
#if an array is empty and one is has an element in it, then that element will be merged into the empty array
