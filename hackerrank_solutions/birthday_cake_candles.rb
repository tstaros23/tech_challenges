class Algorithm
  def self.birthday_cake_candles(candles)
    hash = Hash.new(0)
    candles.map do |candle|
        hash[candle] += 1
    end
    hash[hash.keys.max]
  end
  test = Algorithm.birthday_cake_candles([3,2,1,3])
  test2 = Algorithm.birthday_cake_candles([4,4,1,3])
end
