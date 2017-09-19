def caesarshift (phrase, num)
	encrypt = phrase.split("\s")
	encrypt.map! {  |z|
		z = z.split('').each do |i|#possibly insert a ranger here eg: (a..z).each do...
			
			num.times do
				i.next!
			end
		end
		z.join
	}
	encrypt.join(" ")
	
	end



puts "Please enter the phrase you would like to decrypt: "
phrase = gets.chomp
puts "Please enter the level of encryption you would like: "
num = gets.chomp.to_i
print caesarshift(phrase, num)