class Algorithm

  def self.solution(n,a)
  j = 0

  result = a.map do |i|
    starting = j -1
    result = if starting < 0

      last = a[j + 1]
      if last.nil?
        last = 0
      end
        math = 0 + a[j] + last
      elsif j + 1 > a.length - 1
        a[starting] + a[j] + 0
      else
        a[starting] + a[j] + a[j + 1]
      end
      j += 1
      result
    end
    i = 0
    output = []
    while i < n do
      first = a[i - 1]
      middle = a[i]
      last = a[i + 1]
      if i - 1 < 0
        output << 0 + middle + last
      elsif i + 1 > n - 1
        output << first + middle + 0
      else
        output  << first + middle + last
      end
      i += 1
      # require "pry"; binding.pry
    end
    output
  end
  # truth = Algorithm.solution(1,[1])
  other_truth = Algorithm.solution(5,[4,0,1,-2, 3])
end
