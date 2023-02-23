#   Psuedo code
#   0. Welcome the user
#   1. Explain the rules
#   2. Show the user different items for them to guess the price of.
#   3. Store the answer
#   4. Ask the user for a price
#   5. Compare guessed price to actual price
#   6. If incorrect ask again and tell the user if it's too low or too high
#   7. If the user is correct display congratulation message.
#   8. If the user reaches 3 guesses without guessing correctly display message telling them they lost

puts " "

puts "Ladies and gentlemen, come on down! You're the next contestants on The Price Is Right! Get ready to bid on fantastic prizes, guess the prices of amazing products, and spin that big wheel for a chance to win big! With your host, the one and only, Drew Carey! Let's get this show started!"

puts " "

puts "######################################################"

puts " "

puts "Choose which of the following items you want to guess the price of: (enter the number of the item)"

puts "1. A brand new 65-inch OLED Smart TV from LG"
puts "2. A luxurious leather sectional sofa with built-in massage chairs"
puts "3. A state-of-the-art professional-grade espresso machine from Breville"


price_of_item = 0
item_choice = 0

until item_choice >= 1 && item_choice <= 3
    item_choice = gets.chomp.to_i
    if item_choice == 1
        price_of_item = 2000
        puts "You have chosen to guess the price of the TV, please enter your guess in dollars:"
    elsif item_choice == 2
        price_of_item = 4000
        puts "You have chosen to guess the price of the luxurious leather sofa, please enter your guess in dollars:"
    elsif item_choice == 3
        price_of_item = 2500
        puts "You have chosen to guess the price of the luxurious leather sofa, please enter your guess in dollars:"
    else
        puts "Error: please enter 1, 2 or 3"
    end
end

player_price = 0
number_of_guesses = 0

until number_of_guesses == 3
    player_price = gets.chomp.to_i
    if player_price == price_of_item
        puts "You guessed correctly! You are the winner!"
        break
    elsif player_price == 0
        puts "Error(not a valid guess) Please enter a number:"
    elsif player_price < price_of_item
        puts "Your guess is too low, guess again:"
        number_of_guesses += 1
    else player_price > price_of_item
        puts "Your guess is too high, guess again:"
        number_of_guesses += 1
    end
end

if number_of_guesses == 3
    puts " "
    puts " "
    puts "You lost! Please play again!"
    puts " "
    puts " "
    exec("ruby #{__FILE__}")
end






