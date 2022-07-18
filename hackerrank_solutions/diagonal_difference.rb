class Algorithm
  def self.diagonal_difference(arr)
    left_total = 0
    right_total = 0
    negative_index = -1
    arr.each_with_index do |item, index|
        right_total += item[negative_index]
        left_total += item[index]
        negative_index -= 1
    end
    (left_total - right_total).abs()
    # i = 0
    # left_total = 0
    # # right_hash = Hash.new(0)
    # while i < arr.length do
    #     arr.map do
    # end
    # puts left_total
  end
  test = Algorithm.diagonal_difference([[11, 2, 4], [4, 5, 6], [10, 8, -12]])
end
