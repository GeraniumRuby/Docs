########### UTILITY #############

########### FRAME  ##############
# 151 Across

def box(arr)
  width = 151

  width.times{print "*"}
  # puts "\n"
  room=25-arr.length
  extra_room=room/3
  extra_room.times {puts "**"+" "*149+"**"}
  arr.each do |i|
    current_length = i.length+1
    puts "** #{fill_space_pre}#{i}#{fill_space_post(current_length)} **"
  end
  extra_room.times {puts "**"+" "*149+"**"}
  width.times{print "*"}
end

def fill_space_pre
  str= ' '*8
  end
def fill_space_post(current_length)
  spaces_to_fill = 145 - current_length
  str = ' ' * (spaces_to_fill-6)
  end

#Clear screen
def empty_screen
  29.times { puts "\n" }
end
#Center
def my_puts(str)
  puts str.center(151)
end
#Continue
def click
  names = gets
  if names == "\n"
    empty_screen
  end
end


######### SLIDES ############
# 139 chars across, more or less. 25 lines tall
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
              "there","is","problem","should","be","safe",
              "twelve"]
big_words6 = [" ","testing empty strings"," ","lots of tests","BIG BIG"," ","TESTS"]

empty_screen
box(big_words3)
click
box(big_words4)
click
box(big_words5)
click
box(big_words6)
click