class RomanToNum

   def convert(letters)

      valuehash = { "I" => 1 }

      answer = 0
      input = letters.split("")
      
      input.each do |x|
         valuehash.each do |key, value|
            if x == key
               answer += value
            end
         end
      end
      return answer
   end
end