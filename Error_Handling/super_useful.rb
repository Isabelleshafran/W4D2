# # PHASE 2
# def convert_to_int(str)
#   begin
#   num = Integer(str)
#   rescue ArgumentError => err
#     "Cannot convert to Integer"
#   ensure 
#     num = 0
#   end
# end

# # PHASE 3
# FRUITS = ["apple", "banana", "orange"]

# class CoffeeError < StandardError; end
# class OtherFoodError < StandardError; end

# def reaction(maybe_fruit)
#   if FRUITS.include? maybe_fruit
#     puts "OMG, thanks so much for the #{maybe_fruit}!"
#   elsif maybe_fruit == 'coffee'
#     raise CoffeeError
#   else
#     raise OtherFoodError
#   end 
# end

# def feed_me_a_fruit
#   puts "Hello, I am a friendly monster. :)"
#   begin
#   puts "Feed me a fruit! (Enter the name of a fruit:)"
#   maybe_fruit = gets.chomp
#   reaction(maybe_fruit) 
#   rescue CoffeeError => err
#     puts 'please dont feed the monster coffee!'
#     retry
#   rescue OtherFoodError => err2
#     puts 'please only feed monster fruit :)'
#   end 
# end  

# PHASE 4
class 
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    raise "We aint friend" if @yrs_known < 5
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


