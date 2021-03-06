class Substring

	def initialize
		@dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
	end

	def user_input(string)

		substrings(string,@dictionary)
	end

	def substrings(string, dict_array)
		my_hash = {}
		arr_word = string.split(" ")
		
		arr_word.each do |current_word|
			i = 1
			current_word.downcase!
			dict_array.each do |dict_word|
				if(current_word =~ /#{dict_word}/ )
					if(my_hash.has_key?(dict_word))
						my_hash[dict_word] += 1 
						i = my_hash[dict_word]
					end
					my_hash[dict_word] = i	
				end
			end	
		end
		return my_hash.sort.to_h	
	end
end

ss = Substring.new
user_word = "Howdy partner, sit down! How's it going?"
result = ss.user_input(user_word)
puts result