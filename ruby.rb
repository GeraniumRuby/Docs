########### UTILITY #############

########### FRAME  ##############

## Box
 def box(arr)
    # Margin that I made a var so I can tweak it in one place instead of throughout the function
  left_margin = "    "
    ####### Top #######
    # Prints upper bar
  puts left_margin + '*' * 153
    # Idea slide height is 15. This calculates the needed empty space above and below the text
  room = 15 - arr.length+1
  extra_room = room / 2
    # Ruby auto rounds up. This makes it round down.
  if extra_room % 2 > 0
    extra_room = extra_room - 1
  end
    # Prints the needed empty upper rows
  extra_room.times { puts left_margin + "**" + " " * 149 + "**" }
    ###### Middle ######
    # For each line in the slide arr, print left stars, the spaces needed from fill space pre
    # then the string, then the spaces needed from fill space post and then left stars
  arr.each do |i|
      # Current length lets us know how long the line of text is for later.
    current_length = i.length + 1
      #Checks to see if string should be centered with the code ~~  that I made up
    if i.include?("~~ ")
      puts left_margin + "**#{center_title(current_length)}#{i}#{center_title(current_length)}**"
    else
        # If not the title, prints the line with the spaces before and after
        # per the fill space defs below.
      puts left_margin + "**#{fill_space_pre}#{i}#{fill_space_post(current_length)}**"
    end
  end
    ###### Bottom ######
    # Prints the needed empty lower rows
  extra_room.times { puts left_margin + "**" + " " * 149 + "**" }
    # Prints lower bar
  puts left_margin + '*' * 153
end

# Padding between the box and the text. This aligns the text.
# This one provides the spaces on the left
def fill_space_pre
  str= ' ' * 8
end

# This provides the spaces on the right
def fill_space_post(current_length)
    # Spaces to fill is the total empty non-star space of the slide
    # minus the current length of the line of text.
  spaces_to_fill = 150 - current_length
  str = ' ' * (spaces_to_fill-8)
end
# Gives the spaces needed to center the line for a title
def center_title(current_length)
  outer_space = 150 - current_length
  str = ' ' * (outer_space / 2)
end
# the fill spaces functions do not print on their own, but since they are included in a puts
# concat above, they print.

########################################################
#Clear screen, made its own function so I can call it at first without the need to press a button
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


######### SLIDES ############
# 132 chars across. 10 lines to a slide
# Every slide is an array of strings. One string is one line of text.

s1_intro = ["~~ Ruby is an Object Oriented Programming language.","That means it abides by the four pillars:",
            "Abstraction", "Encapsulation", "Inheritance", "Polymorphism",
            " ",
            "I'm going to show you examples of these four pillars as well as other syntax that I thought was interesting."]
s2_abs = ["~~ ABSTRACTION ",
          "Through the use of puts, and print, the user only sees what is needed and interacts with the program through the gets keyword.",
          "Right now, this program finds the length of an array of strings, subtracts that length from the idea slide height,",
          "then divides that number in half to know how many empty lines to print above and below the slide text.",
          "It then checks to see if a string is tagged to be centered and then calculates the spaces needed before and after.",
          "Then, it finds the amount of spaces needed before and after each line and prints the three parts in order.",
          "Last, it prints the other half of the empty rows and then the bottom star bar. There is also a function to pause the output",
          "And wait for an enter to show the next slide, and then clears the screen by displaying a number of enters.",
          " ",
          "The result is a slide program that displays up to ten lines per slide in a relatively uniform size.",
          "All those calculations are abstracted and hidden from the end user."]
s3_encap = ["~~ ENCAPSULATION ",
            "Ruby protects and hides data through the use of instance variables, attribute accessors, readers, and writers.",
            "These look like @ to denote a class' instance variable, and then attr_accessor, attr_reader, and attr_writer.",
            "These make it so that we can set or get the instance variable elsewhere. The attr_accessor is both getter and setter.",
            "You can designate what instance variables you want to be read-only,write-only, or both"]
s4_inher = ["~~ INHERITANCE ",
            "The use of classes and subclasses is an important aspect to Ruby.",
            "A subclass is denoted with the < symbol. Subclasses inherit all attributes and methods of its parent class.",
            "An attribute that belongs to the whole class is denoted with @@ and is often only used for instance counting since",
            "any instance of the class and/or its subclasses can alter it on accident. Instead, class instance variables are preferred",
            "because it narrows the probability of unintended bugs.",
            " ",
            "Ruby also has the ability to have a subclass' method perform the super class method, but then add to it with the use",
            "of the super keyword."]
s5_poly = ["~~ POLYMORPHISM  ",
           "Polymorphism is the ability to use the same method and return different results depending on the input.",
           "Ruby accomplishes this through the ability to change a method's behavior due to inheritance, as well as",
           "the ability to use duck-typing where the name of something is less important than the method being used.",
           "Ruby was designed to favor function over construction which is convenient, but can cause bugs and sometimes",
           "be hard to debug."]
s6_conc = ["~~ CONCLUSION ",
           "Ruby is a fun, flexible programming language with a robust support community that continues to use and celebrate",
           "the language decades after its launch. It is intuitive and flexible, promoting common language approach to development.",
           " ",
           "Personally, I found it very easy to pick up and I look forward to using it in the future."]
############## SLIDE SHOW ###############
empty_screen
box(s1_intro)
click
box(s2_abs)
click
box(s3_encap)
click
box(s4_inher)
click
box(s5_poly)
click
box(s6_conc)
click