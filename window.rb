#### UTILITY ####
def empty_screen
  10.times { puts "\n" }
end

#Continue
def click
  button = gets
  if button == "\n"
    empty_screen
  end
end

#Bottom Padding
def soft
  4.times { puts "\n" }
  print "--"*20
  2.times { puts "\n" }
end

### ENCAPSULATION EXAMPLE ###
class Butterfly
    # attr_accessor means that invoking object.variable will let you both read and write that variable in that object.
    # attr_reader lets you read only and attr_accessor will let you write only.
  attr_accessor :color,:size
    # def initialize is where the values for the instance variables are held when the class is obstantiated.
    # This is similar to a class constructor in Java. Without the above attr_ these would be private by default and
    # would be completely unreachable. Without it any invocation of object.variable would return with a method-related error.
 def initialize(color,size)
   @color=color
   @size=size
 end
end

  # Creating a new object of class Butterfly. Instance variables are set here.
monarch=Butterfly.new("yellow","medium")
soft #top buffer and dashes
puts "******** ENCAPSULATION DEMO ********"
puts " "
  # Here, we are able to read the color and size because the attr_accessor gives us permission.
puts "I have a butterfly that is #{monarch.color} and is #{monarch.size}."
  # Here, we are re-writing those instance variables. We can do that because attr_accessor both sets and gets
monarch.color="purple"
monarch.size="big"
  # Now, we can reread the variables and can see that they have been changed.
puts "Now it is #{monarch.color} and is #{monarch.size}."
soft
click


#### INHERITANCE DEMO ####
class Person
  def wave
    "Hello!"
  end
end

  # Child classes Boy and Girl hold no methods.
class Boy < Person
end

class Girl < Person
end

  # Here, we can see that they have inherited the wave method from parent class Person.
john = Boy.new
sally = Girl.new
soft
puts "******** INHERITANCE DEMO ********"
puts " "
puts "Sally says #{sally.wave}!"
puts "John says #{john.wave}!"
soft
click


######### Inheritance with Super ########
soft
puts "******** Inheritance with Super ********"
puts " "
class Instrument
  def i_am
    puts "I'm an instrument, I make noise"
  end
end
class Drum < Instrument
  # The super keyword here means that both the super class and this subclass' methods should be performed.
  def i_am
    super
    puts "I am a drum, I go bam bam."
  end
end

snare = Drum.new
snare.i_am
# Both the line from the instrument class was printed, as well as the drum line
# with just one method call.
soft
click


########## POLYMORPHISM DEMO ##########
##  ##  Poly through Inheritance ## ##
class Animal
  def speak
    "Hello!"
  end
end

class Dog < Animal
  def speak
    "WOOF!"
  end
end

class Cat < Animal
  def speak
    "MEOW!"
  end
end

sandy = Dog.new
aria = Cat.new
enda = Animal.new
soft
puts "******** Polymorphism through Inheritance ********"
puts " "
puts "Sandy the dog says #{sandy.speak}."
puts "Aria the cat says #{aria.speak}."
puts "Enda the person says #{enda.speak}."
soft
click
# The speak method was able to be altered through each class and subclass.

###### ## ## Poly through Duck Typing ## ## #######
class Bookcase
  def genre(b_info)
    b_info.genre
  end

  def shelf(b_info)
    b_info.shelf
  end
end

class Romance
  def genre
    puts "This is a romance book."
  end
  def shelf
    puts "This goes on the third shelf."
  end
end

class Horror
  def genre
    puts "This is a horror book."
  end
  def shelf
    puts "This goes on the second shelf."
  end
end

soft
puts" ******** Polymorphism through Duck Typing ********"
puts " "
white_case=Bookcase.new
puts "Tender is the Flesh by Agustina Bazterrica."
b_info = Horror.new
white_case.genre(b_info)
white_case.shelf(b_info)
puts " "
puts "Warm Bodies by Isaac Marion."
# Both books are obstantiated under the name b_info. The methods still work as expected because Ruby focuses on
# what a class does, rather than what it is named. The subclass that it was made as matters move than the var it
# is called by.
b_info = Romance.new
white_case.genre(b_info)
white_case.shelf(b_info)
soft
click
#######################################################
soft
puts "Other fun examples!"
soft
click

######################################################
###### Demo Math #######
def demo_math
  puts "******** DEMO MATH ********"
  puts " "
  puts "Enter first value: "
  num1=gets.chomp.to_i
  puts "Enter second value: "
  num2=gets.chomp.to_i
  sum=num1+num2
  puts "The sum is #{sum}."
end

soft
puts"******** Demo Simple Math, Intake, and Casting ********"
puts " "
demo_math
soft
click
# .chomp removes the enter that follows the input when gets is used.
#  .to_i casts the gets string into an integer
#  #{var} is a way of format printing a variable that changes.
#  #{.  } can also call functions inside a puts print line

###### Demo While and Switch Case ######
def demo_switchcase
  soft
  puts "******  DEMO SWITCHCASE *******"
  puts " "
  puts "Pick a flavor:"
  puts "1 for Chocolate"
  puts "2 for Vanilla"
  puts "3 for Strawberry"
    case gets.chomp.to_i
    when 1
      puts "Chocolate: Extra fudge!"
    when 2
      puts "Vanilla: Rich and Creamy!"
    when 3
      puts "Strawberry: Fresh and Sweet!"
    else
      puts "Please enter a number between 1 and 3"
      puts "1 for Chocolate"
      puts "2 for Vanilla"
      puts "3 for Strawberry"
  end
end
demo_switchcase
soft
click
# Since loops and functions begin without braces or colons, they start with keywords and end with 'end'
# It's a good idea to treat ends like <div> </divs> in html and braces in java.

def demo_range_each
  soft
  puts "******  DEMO RANGE_EACH *******"
  puts " "
  (1..10) .each { |i| print i}
end
demo_range_each
soft
click
# In the parentheses, you place your start and end, .each lets Ruby know that for every |i| you will print i
# Everything in the braces is called a block, which are like small anon functions or lambdas.
# Anything between pipes is the block argument and anything after it is the block body.
# Here, it's saying print i, taking the argument i from the range loop.

###### DEMO UNLESS ######
def demo_unless
  10.times do |i|
    next unless i.even?
    puts "hello #{i}"
  end
end
# Prints evens. next skips it, unless asks to check another conditional.
# The question mark implies an if to the conditional even.
# From 0 to ten, skip if it is odd, if it is even, then print Hello, number.
soft
puts "******** DEMO UNLESS *******"
puts " "
demo_unless
soft
click
######## DEMO SELECT #######
def demo_select_and
  (0...10).select(&:even?)
end
# The &: here is a way to express the |i| i.method block in just two characters.
# The function is a range loop and returns (select) numbers that are even.
soft
puts "******** DEMO SELECT *******"
puts " "
print demo_select_and
soft
click