class Person

	def initialize(stomach, allergies)
		@stomach = []
		@allergies= /gluten|pasta/

	end

	def eat(food)

		food.each do |item|

		if @allergies.match(item)
			puts "#{item} AllergyError"

		else
			puts "Yum!"
			@stomach.push(item)
			p @stomach

		end

		end

	end


end


pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]

david = Person.new("empty","gluten")
david.eat(pizza)
david.eat(pan_seared_scallops)

