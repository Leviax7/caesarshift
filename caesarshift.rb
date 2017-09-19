def caesarshift (phrase, num)
	words = phrase.split(/\s/)
	words.map {|word|

			word.each_char {|char|

					if ("a".."z").include?(char) || ("A".."Z").include?(char)

						num.times{

						if 	char == "z"
							char = "a"

						elsif 	char == "Z"
								char = "A"

						else	char.next!

						end

						}
						
					end
			print char
			}
			print " "
	}
puts ""
end

puts "Please enter the phrase you would like to encrypt: "
phrase = gets.chomp
puts "Please enter the level of encryption you would like: "
num = gets.chomp.to_i
caesarshift(phrase, num)


