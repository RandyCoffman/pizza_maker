#def how_many()
    #input = gets.chomp.to_i
#end
def menu()
    menu = gets.chomp.to_i
    p "Pizza"
    p "wings"
    p "salad"
    p "pasta"
    p "drink"
end
def choice()
    choice = gets.chomp.to_i
    if choice == "wings"
        p wings
    elsif choice =="salad"
        p salad
    elsif choice == "pasta"
        p pasta
    elsif choice == "pizza"
        p pizza
    #else choice == "drink"
        #p drink
    end
end
def choice_price(cost)
    choice_price = 0
    if choice_price == "wings"
        p = 5.00
    elsif choice_price == "salad"
        p = 7.00
    elsif choice_price == "pasta"
        p = 7.00
    elsif choice == "pizza"
        p = 10.00
    else choice == "drink"
        p = 2.00
    end
end
def crust()
    result=["stuffed","thin","pan","deep dish","cheesy"].sample
end
def sauce()
    result=["house sauce","classic","extra thick","lite sauce"].sample
end
def cheese()
    result=["cheddar","mozzarella","feta","provalone"].sample
end
def meat_topping()
    result=["steak","pepperoni","chicken","bacon","ham"].sample
end
def veggi_topping()
    result=["peppers","onions","olives","mushrooms","tomatoes","spinach"].sample
end
def specials()
    result=["banana peppers","pineapple","cheese sause","garlic sauce","extra cheese","double pepperoni"].sample
end
def size(size)
    size_cost = 0
    if size == "small"
        p = 5.00
    elsif size == "medium"
        p = 10.00
    elsif size == "large"
        p = 15.00
    else 
        p "you did it wrong"
    end
    #return p
end
def pizza_choice()
    p crust
    p sauce
    p cheese
    p meat_topping
    p veggi_topping
    p specials
end
#def wings()
    #wings_cost = 0
    #p "wings "
    #wings = 10.00
#end
#def salad()
    #salad_cost = 0
    #salad = 5.00
#end
#def pasta()
    #pasta_cost = 0
    #if pasta
        #p = 5.00
    #end
#end
#def drink()
    #drink_cost = 0
    #if drink
        #p = 1.00
    #end
#end
counter = 1
print "Pizzaria Menu"
full_menu = menu()
print "What would you like?"
choice = choice()
#print "How many pizza's would you like?"
#input = how_many()
while counter <= choice do
    choice_price = gets.chomp
    price = cost(choice_price)
    puts price
    choice
    subtotal = subtotal + price
    counter = counter + 1
end
#def pizza()
    #counter = 1
    #while counter <= input do
    #print "What size would you like?"
    #size_of_pizza = gets.chomp
    #price = size(size_of_pizza)
    #puts price
    #pizza
    #subtotal = subtotal + price
    #counter = counter + 1
    #end
#end
subtotal = 0
tax = subtotal * 0.06
delivery = input * 2
total = subtotal + tax + delivery
puts "Subtotal: $#{sprintf("%.02f",subtotal)}"
puts "Delivery: $#{sprintf("%.02f",delivery)}"
puts "tax: $#{sprintf("%.02f",tax)}"
puts "TOTAL: $#{sprintf("%.02f",total)}"