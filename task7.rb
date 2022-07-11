class Algorithm
  def self.reverse_string(string)
    array = string.split("")
    output = []
    i = -1

    while i >= -(array.length) do
      output << array[i]
      i -= 1
    end
    output.join
  end

  truth = Algorithm.reverse_string("Madam, I’m Adam")
  require "pry"; binding.pry
end
