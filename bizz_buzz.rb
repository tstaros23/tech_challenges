# divisible by 3 print fizz
# divisible by 5 print buzz
# divisible by both print fizz buzz
# not divisible by either of those then print out the number
# numbers 1 to 100
# if 3 % 3 == 0
class Algorithm
  def self.fizz_buzz(max_number)
    i = 1
    while i < max_number do
      if i % 15 == 0
        puts 'fizz bizz'
      elsif i % 3 == 0
        puts 'fizz'
      elsif i % 5 == 0
        puts 'buzz'
      else
        puts i
      end
      i += 1
    end

  end
  def self.first_unique(array)
    a = array.each_with_index do |element, index|
      if array.count(element) == 1
        return index
      end
    end
  end
  puts more_truth = Algorithm.first_unique([2,4,3,2,5,9,4,3,1,3])
  truth = Algorithm.fizz_buzz(100)
end

#array of numbers. method that returns the index of the first non repeating number in that array
# if we provided 1, 2,3,1,2 method returns 2 and an index of 3
# first figure out if the number is already in the array
# includes?() maybe
# if the element is included in the array. then go to next element
# otherwise return the index
#
# first, last, hair color, eye color, age
# sort by age, alphabetical by last name, if their are duplicate last names then sort by first
# click on enroll your student. asks for first last name
# principal, teacher has_many students. student belong
# before filter
# select all the teachers
