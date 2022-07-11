class Algorithm
  def self.solution(a, b, k)
   i = 0
   tiny = 0
      while i < a.length do
        a_array = a[i].to_s
        b_array = b[-(i + 1)].to_s
        if (a_array + b_array).to_i < k
            tiny += 1
          else
            tiny += 0
          end
        i += 1
      end
      tiny
  end
  truth = Algorithm.solution([1,2,3], [1,2,3], 31)
end
