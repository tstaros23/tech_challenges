def moves(string)
  # return true if string.nil?
  array = string.split("")
  hash = Hash.new(0)
  array.map do |char|
    hash[char] =+ 1
  end
  hash["L"] == hash["R"] && hash["U"] == hash["D"]
end

puts moves("LDLUUR")
puts moves("LURD")
puts moves("UD")
puts moves("UDR")
puts moves("LL")
