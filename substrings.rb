dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

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

user_word = "Howdy partner, sit down! How's it going?"
result = substrings(user_word,dictionary)
puts result