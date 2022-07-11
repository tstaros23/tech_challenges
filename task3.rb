class Algorithm
  def self.solution(message)
  i = 0
  string = message.split("")
  length = string.length
  result = []

  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

      while i < length do
        character = string[i]
        downcase_letter = character.downcase
        uppercase_letter = character.upcase

        if consonants.include?(downcase_letter) && character.match?(downcase_letter)
          index = consonants.index(downcase_letter)
          consonant = consonants[index + 1]
          if consonant.nil?
            result << consonants[0]
          else
            result << consonant
          end
        elsif consonants.include?(downcase_letter) && character.match?(uppercase_letter)
          index = consonants.index(downcase_letter)
          consonant = consonants[index + 1]
            if consonant.nil?
              result << consonants[0].upcase
            else
              result << consonant.upcase
            end
        else
          result << character
        end
         i += 1
      end
      result.join
  end
  puts Algorithm.solution("CodeSignal")
  puts Algorithm.solution("Quiz, Citizenship, puZZle")
  puts Algorithm.solution(",,,,,,,,")
end
