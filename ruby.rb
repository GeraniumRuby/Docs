########### UTILITY #############

########### FRAME  ##############

## Box
 def box(arr)
  # Margin that I made a var so I can tweak it in one place instead of throughout the function
  left_margin = "    "
  # Prints upper bar
  puts left_margin + '*' * 153
  # Idea slide height is 15. This calculates the needed empty space above and below the text
  room = 15 - arr.length
  extra_room = room / 2
  # Ruby auto rounds up. This makes it round down.
  if extra_room % 2 > 0
    extra_room = extra_room - 1
  end
  # Prints the needed empty upper rows
  extra_room.times { puts left_margin + "**" + " " * 149 + "**" }
  # For each line in the slide arr, print left stars, the spaces needed from fill space pre
  # then the string, then the spaces needed from fill space post and then left stars
  arr.each do |i|
    # Current length lets us know how long the line of text is for later.
    current_length = i.length + 1
    puts left_margin + "** #{fill_space_pre} #{i} #{fill_space_post(current_length)} **"
  end
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
  spaces_to_fill = 146 - current_length
  str = ' ' * (spaces_to_fill-8)
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

big_words3 = ["and practical utility like that of Perl.","The name 'Ruby' originated during an online chat session between Matsumoto and",
              "Keiju Ishitsuka on February 24, 1993, before any code had been written for the language.",
              "Initially two names were proposed: 'Coral'' and 'Ruby''. Matsumoto chose the latter in a later",
              "e-mail to Ishitsuka.[13] Matsumoto later noted a factor in choosing the name 'Ruby'–it was the",
              "birthstone of one of his colleagues."]
big_words4 = ["POh wow this is kinda working",
              "I hope this keeps going well because this is neat and I think they will be impressed and happy this is testing any wrapping overflow",
              "The above line is the longest it can be before throwing an error."]
big_words5 = ["Testing","How","many","lines","before",
              "there","is","problem","should","be"]
big_words6 = [" ","testing empty strings"," ","lots of tests","BIG BIG"," ","TESTS"]

############## SLIDE SHOW ###############
empty_screen
box(big_words3)
click
box(big_words4)
click
box(big_words5)
click
box(big_words6)
click