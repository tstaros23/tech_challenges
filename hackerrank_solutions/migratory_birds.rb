class Algorithm
  def self.migratoryBirds(arr)
    hash = Hash.new(0)
    arr.map do |i|
        hash[i] += 1
    end
    # hash.key(hash.values.max)
    results = hash.max_by(2) do |k,v|
        v
    end
    results[0][1] > results[1][1] ?
    results[0][0] :
    results[0][1] == results[1][1] && results[0][0] < results[1][0] ?
    results[0][0]:
    results[1][0]
  end
  test = Algorithm.migratoryBirds([1,1,2,2,3])
  test2 = Algorithm.migratoryBirds([1,2,3,4,5,4,3,2,1,3,4])
end
