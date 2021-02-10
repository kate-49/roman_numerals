class RomanToNum
   attr_accessor :hashvalues, :answer

   def initialize()
      @hashvalues = { "I" => 1 }
      @answer = 0
   end

   def convert(letters)
     
      lettersArray = letters.split("")
      
      lettersArray.each do |x|
         self.hashvalues.each do |key, value|
            if x == key
               self.answer += value
            end
         end
      end

      return self.answer
   end
end