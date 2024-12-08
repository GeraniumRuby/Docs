#### UTILITY ####
def empty_screen
  29.times { puts "\n" }
end

#Continue
def click
  button = gets
  if button == "\n"
    empty_screen
  end
end


### ENCAPSULATION EXAMPLE ###
class Butterfly
  attr_accessor :color,:size
  def initialize(color,size)
    @color=color
    @size=size
  end
end

monarch=Butterfly.new("yellow","medium")
puts "******** ENCAPSULATION DEMO ********"
puts " "
puts "I have a butterfly that is #{monarch.color} and is #{monarch.size}."
monarch.color="purple"
monarch.size="big"
puts "Now it is #{monarch.color} and is #{monarch.size}."
click









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
# .chomp removes the enter that follows the input when gets is used.
#  .to_i casts the gets string into an integer
#  #{var} is a way or format rinting a variable that changes.
#  #{.  } can also call functions inside a puts print line

def demo_while_switchcase
  puts "******  DEMO WHILE SWITCHCASE *******"
  puts " "
  puts "Pick a flavor:"
  puts "1 for Chocolate"
  puts "2 for Vanilla"
  puts "3 for Strawberry"
  while true
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
end
# since loops and functions begin without braces or colons, they start with keywords and end with 'end'
# It's a good idea to treat ends like <div> </divs> in html and braces in java.

def demo_range_each
  puts "******  DEMO RANGE_EACH *******"
  puts " "
  (1..10) .each { |i| puts i}
end
# In the parentheses, you place your start and end, .each lets Ruby know that for every |i| you will print i

