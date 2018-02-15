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
		0
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

cost = 0.0

puts "How many pizzas would you like to order?"
pizzas = gets.chomp.to_i 

puts "Okay, I will make you #{pizzas} pizzas"

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
	bill = cost + crust_cost_calc(crust_type) + sauce_cost_calc(sauce_type) + veggies_cost_calc(veggie_type) + meats_cost_calc(meat_type) + size_cost_calc(pizza_size) + extra_top_cost_calc(extra_top_type) + special_top_cost_calc(spec_top_type)
	puts bill
end

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

puts "The current cost is #{bill}"
puts "What percentage would you like to tip?"
tip_input = gets.chomp.to_f

tip_percent = tip_input / 100
tip = bill * tip_percent
total = fee + bill + tip

puts "The total cost will be $#{total}"
puts "Your tip was $#{tip}"
puts "Your delivery fee was $#{fee}"
puts "Then the orignal cost was $#{bill}"