crust = ["pan crust", "thin", "stuff crusted", "bacon stuff crust"]
meats = ["chicken", "pepperoni", "sausage", "ham", "bacon"]
veggies = ["tamato", "pineapple", "spinach"]
special_toppings = ["bbq sauce", "buffalo chicken"]
sauces = ["alfredo", "bbq", "tomato", "marinara"]
extra = ["double pepperoni", "extra cheese", "double chicken"]


puts "How many pizzas do you want? Pizzas are 11.70 each"
pizzas = gets.chomp.to_i 

puts "Okay, I will make you #{pizzas} pizzas"

pizza = 1
while pizza <= pizzas do
	p "pizza"
	p "Your crust will be #{crust.sample}, meat is #{meats.sample}, veggies are #{veggies.sample}, special toppings are #{special_toppings.sample}, sauce is #{sauces.sample}, and #{extra.sample}." 
	pizza += 1
end

total_cost = 11.70 * pizzas 

puts "The total cost will be $#{total_cost}"