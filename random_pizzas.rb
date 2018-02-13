crust = ["pan crust", "thin", "stuff crusted", "bacon stuff crust"]
meats = ["chicken", "pepperoni", "sausage", "ham", "bacon"]
veggies = ["tamato", "pineapple", "spinach"]
special_toppings = ["bbq sauce", "buffalo chicken"]
sauces = ["alfredo", "bbq", "tomato", "marinara"]
extra = ["double pepperoni", "extra cheese", "double chicken"]


puts "How many pizzas do you want?"
pizzas = gets.chomp.to_i 

puts "Okay, I will make you #{pizzas} pizzas"

pizza = 1
while pizza <= pizzas do
	p "Your crust will be #{crust.sample}, meat will be #{meats.sample}, veggies will be #{veggies.sample}, special toppings will be #{special_toppings.sample}, sauce is #{sauces.sample}, and the extras are #{extra.sample}" 
	pizza +=1
end