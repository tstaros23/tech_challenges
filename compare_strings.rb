def inSubstring(str1,str2)
  if str1.include?(str2) && str1.length != str2.length
    str1.index(str2)
  elsif str1.eql?(str2)
    str1.length
  else
    -1
  end
end

p inSubstring('ted','ted')
