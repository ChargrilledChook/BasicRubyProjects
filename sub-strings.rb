def sub_strings(words, string_array)
  input = words.split 
  p input
  result =  input & string_array
  p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

sub_strings('below go make me fuck you sit', dictionary)



#sub_strings(("Howdy partner, sit down! How's it going?", dictionary))

#Expected result :

# Single word:
# sub_strings("below", dictionary)
#  => { "below" => 1, "low" => 1 }

# Multiple words:
# => { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, 
# "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }

