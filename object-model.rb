module Speak
	def speak sound
		puts "#{sound}"
	end
end

class Cat
	include Speak
end

elise = Cat.new
elise.speak 'Meow.'
