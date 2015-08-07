class String
  define_method(:word_count) do |targetword|
 	  input_string = self.split(" ")
 	  counter = 0

    input_string.each() do |word|
      if word==(targetword)
        counter+=1
      end
    end

   counter

   end
end
