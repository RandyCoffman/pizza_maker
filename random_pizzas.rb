crust = ["pan crust", "thin crust", "stuffed crust", "bacon stuffed crust"]
meats = ["chicken", "pepperoni", "sausage", "ham", "bacon"]
veggies = ["tomato", "pineapple", "spinach"]
special_toppings = ["bbq sauce", "buffalo chicken"]
sauces = ["alfredo", "bbq", "tomato", "marinara"]
extra = ["double pepperoni", "extra cheese", "double chicken"]
size = ["small", "medium", "large", "XL"]

puts "How many pizzas do you want?"
pizzas = gets.chomp.to_i 

puts "Okay, I will make you #{pizzas} pizzas"

pizza_cost = 0.0

pizza = 1
while pizza <= pizzas do
	pizza_size = size.sample
	meat_cost = meats.sample
	veggies_cost = veggies.sample
	special_cost = special_toppings.sample
	sauce_cost = sauces.sample
	extra_cost = extra.sample
	p pizza
	p "Your pizza will be #{pizza_size}, crust will be #{crust.sample}, meat is #{meats.sample}, veggies are #{veggies.sample}, special toppings are #{special_toppings.sample}, sauce is #{sauces.sample}, and #{extra.sample}." 
	if pizza_size == "small"
		pizza_cost += 5.0
	elsif pizza_size == "medium"
		pizza_cost += 8.0
	elsif pizza_size == "large"
		pizza_cost += 10.0
	else pizza_size == "XL"
		pizza_cost += 13.0
	end
	if meat_cost == "chicken"
		pizza_cost += 3.0 
	elsif meat_cost == "pepperoni"
		pizza_cost += 1.0
	elsif meat_cost == "sausage"
		pizza_cost += 1.0
	elsif meat_cost == "ham"
		pizza_cost += 2.0
	else meat_cost == "bacon"
		pizza_cost += 2.0
	end
	if veggies_cost == "tomato"
		pizza_cost += 1.0 
	elsif veggies_cost == "pineapple"
		pizza_cost += 2.0
	else veggies_cost == "spinach"
		pizza_cost += 1.0
	end
	if special_cost == "buffalo chicken"
		pizza_cost += 2.0
	else
		pizza_cost += 1
	end
	if sauce_cost == "alfredo"
		pizza_cost += 0.0 
	else
		pizza_cost += 0
	end
	if extra_cost == "double pepperoni" 
		pizza_cost += 2.0
	elsif sauce_cost == "extra cheese"
		pizza_cost += 1.0
	else
		pizza_cost += 3.0
	end
	p pizza_cost
	pizza += 1
end

current_cost = pizza_cost

puts "Would you like this to be delivered for an extra 5 dollars? Yes or no"
deliver = gets.chomp

if deliver == "yes"
	fee = 5.0
else deliver == "no"
	fee = 0.0
end

puts "The current cost is #{current_cost}"
puts "What percentage would you like to tip?"
tip_input = gets.chomp.to_f

tip_percent = tip_input / 100
tip = current_cost * tip_percent
cost = fee + current_cost + tip

puts "The total cost will be $#{cost}"
puts "Your tip was $#{tip}"
puts "Your delivery fee was $#{fee}"
puts "Then the orignal cost was $#{current_cost}"