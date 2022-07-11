class Algorithm
  def self.solution(arr)
  i = 0
  length = arr.length - 2
  output = []
      while i < arr.length do
          a = arr[i]
          b = arr[i + 1]
          c = arr[i + 2]
          if a > b && b > c
         output << 1
       elsif a < b && b < c
         output << 1
         else
         output << 0
         end
         i += 1
      end
      output
  end
  truth = Algorithm.solution([1,2,1,-4,5,10])
end
