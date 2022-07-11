class Algorithm
  def self.solution(numbers)
        length = numbers.length - 2
        i = 0
        output = []
        while i < length do
            a = numbers[i]
            b = numbers[i + 1]
            c = numbers[i + 2]
            if a < b && b > c
                output << 1
            elsif a > b && b < c
                output << 1
            else
                output << 0
            end
            i += 1
        end
        output

  end
  truth = Algorithm.solution([1, 2, 1, 3, 4])
end
