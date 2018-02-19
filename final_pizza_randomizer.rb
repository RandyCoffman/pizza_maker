def size
	["small", "medium", "large", "XL"]
end

def crust
	["pan crust", "thin crust", "stuffed crust", "bacon stuffed crust"]
end

def meats
	["chicken", "pepperoni", "sausage", "ham", "bacon"]
end

def veggies
	["tomato", "pineapple", "spinach"]
end

def special_toppings
	["bbq sauce", "buffalo chicken"]
end

def sauces
	["alfredo", "bbq", "tomato", "marinara"]
end

def extra_toppings
	["double pepperoni", "extra cheese", "double chicken"]
end

def salad
	["caesar", "veggie"]
end

def wings
	["kentucky bourbon", "garlic", "triple atomic", "buckeye bbq", "Buffalo"]
end

def drinks
	["water", "Coca-Cola", "Powerade", "Gold Peak Tea", "Sprite"]
end

def pasta
	["chicken alfredo", "lasagne"]
end

def size_cost_calc(size)
	if size == "small"
		return 5
	elsif size == "medium"
		return 7
	elsif size == "large"
		return 10
	else 
		return 13
	end
end

def crust_cost_calc(crust)
	if crust == "pan crust"
		return 0
	elsif crust == "thin crust"
		return 0
	elsif crust == "stuffed crust"
		return 2
	else 
		return 3
	end
end

def meats_cost_calc(meats)
	if meats == "chicken"
		return 3
	elsif meats == "pepperoni"
		return 1
	elsif meats == "sausage"
		return 1
	elsif meats == "ham"
		return 2
	else
		return 3
	end
end

def veggies_cost_calc(veggies)
	if veggies == "tomato"
		return 1
	elsif veggies == "pineapple"
		return 3
	else 
		return 1
	end
end

def special_top_cost_calc(special_toppings)
	if special_toppings == "bbq sauce"
		return 2
	else 
		return 4
	end
end

def sauce_cost_calc(sauces)
	if sauces == "alfredo"
		return 3
	elsif sauces == "bbq"
		return 2
	else 
		return 0
	end
end

def extra_top_cost_calc(extra_toppings)
	if extra_toppings == "double pepperoni"
		return 2
	elsif extra_toppings == "extra cheese"
		return 1
	else 
		return 3
	end
end

def salad_cost_calc(salad)
	if salad == "caesar"
		return 4
	elsif salad == "veggie"
		return 2
	else 
		return 0
	end
end

def wing_cost_calc(wings)
	if wings == "kentucky bourbon"
		return 3
	elsif wings == "garlic"
		return 3
	elsif wings == "triple atomic"
		return 12
	elsif wings == "buckeye bbq"
		return 3
	elsif wings == "buffalo"
		return 3
	else
		return 0
	end
end

def drink_cost_calc(drinks)
	if drinks == "water"
		return 1
	elsif drinks == "Coca-Cola"
		return 2
	elsif drinks == "Powerade"
		return 2
	elsif drinks == "Gold Peak Tea"
		return 2
	elsif drinks == "Sprite"
		return 2
	else 
		return 0
	end
end

def pasta_cost_calc(pasta)
	if pasta == "chicken alfredo"
		return 5
	elsif pasta == "lasagne"
		return 4
	else
		return 0
	end
end

def welcome
	puts "Hello, welcome to Scott's random pizza shop. You put an order in and we will completely randomize it!"

	puts "\n"

	puts "This is our menu\n\nsalads:#{salad.join(", ")}\nwings:#{wings.join(", ")}\ndrinks:#{drinks.join(", ")}\npasta:#{pasta.join(", ")}\nsizes of pizza:#{size.join(", ")}\ntypes of crust:#{crust.join(", ")}\nmeats:#{meats.join(", ")}\nveggies:#{veggies.join(", ")}\nspecial toppings:#{special_toppings.join(", ")}\ntypes of sauce:#{sauces.join(", ")}\nextra toppings:#{extra_toppings.join(", ")}."

	puts "\n"
end

def order
	puts "Would you like a salad, wings, drinks and/or pasta? (yes or no)"
	yesno = gets.chomp

	if yesno == "yes"
		puts "What would you like salad? (yes or no)"
		salad_choice = gets.chomp
			if salad_choice == "yes"
				salad_type = salad.sample
				puts "Here's your salad: #{salad_type} salad."
			else
				puts "Okay, we won't serve a salad to you." 
			end
			puts "Would you like wings? (yes or no)"
			wing_choice = gets.chomp
			if wing_choice == "yes"
				wing_type = wings.sample
				puts "Here are your wings: #{wing_type} wings."
			else 
				puts "Okay, you don't want wings."
			end
			puts "Would you like something to drink? (yes or no)"
			drink_choice = gets.chomp
			if drink_choice == "yes"
				drink_type = drinks.sample
				puts "Here's your drink: #{drink_type}."
			else 
				puts "Okay, you don't want anything drink."
			end
			puts "Would you like pasta? (yes or no)"
			pasta_choice = gets.chomp
			if pasta_choice == "yes"
				pasta_type = pasta.sample
				puts "Here are your pasta: #{pasta_type}."
			else 
				puts "Okay, you don't want pasta."
			end
	else
		puts "okay, we'll continue to process your order"
	end

	puts "How many pizzas would you like to order?"
	pizzas = gets.chomp.to_i 

	puts "Okay, I will make you #{pizzas} pizzas"

	bill = 0
	cost = []

	for pizza in 1..pizzas
		pizza_size = size.sample
		crust_type = crust.sample
		meat_type = meats.sample
		veggie_type = veggies.sample
		sauce_type = sauces.sample
		extra_top_type = extra_toppings.sample
		spec_top_type = special_toppings.sample
		puts "This is pizza ##{pizza}."
		puts "#{pizza_size}, #{crust_type}, #{meat_type}, #{veggie_type}, #{sauce_type}, #{spec_top_type}, #{extra_top_type}"
		bill = crust_cost_calc(crust_type) + sauce_cost_calc(sauce_type) + veggies_cost_calc(veggie_type) + meats_cost_calc(meat_type) + size_cost_calc(pizza_size) + extra_top_cost_calc(extra_top_type) + special_top_cost_calc(spec_top_type)
		puts bill 
		cost.push bill
		if pizza == pizzas
		puts "This is the cost of the pizzas added together #{cost.inject(:+)}!" 
		end
	end

	puts "\n"
	puts "Would you like this to be delivered for an extra 5 dollars? Yes or no"
	deliver = gets.chomp

	if deliver == "yes"
		fee = 5.0
	elsif deliver == "no"
		fee = 0.0
	else
		puts "I don't understand, try again"
		return deliver
	end

	puts "\n"
	puts "The current cost is #{cost.inject(:+)}"
	puts "What percentage would you like to tip?"
	tip_input = gets.chomp.to_f

	tip_percent = tip_input / 100
	tip = cost.inject(:+) * tip_percent
	total = fee + cost.inject(:+) + tip + salad_cost_calc(salad_type) + wing_cost_calc(wing_type) + drink_cost_calc(drink_type) + pasta_cost_calc(pasta_type)

	puts "\n"
	puts "The total cost will be $#{total}"
	puts "Your tip was $#{tip}"
	puts "Your delivery fee was $#{fee}"
	puts "The orignal cost was $#{cost.inject(:+)}"
end

welcome
order