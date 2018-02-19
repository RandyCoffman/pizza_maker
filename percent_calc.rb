current_cost = 11.70 * pizzas

puts "Your bill is #{current_cost} right now, lets see how much you want to tip currently. Please enter the percentage you woud like to tip(whole number)"

tip_input = gets.chomp.to_f

tip_percent = tip_input / 100
tip = current_cost * tip_percent
cost = bill + tip

