def sub_strings(string, dictionary)
  string.downcase.split.reduce(Hash.new(0)) do |hash, word|
    dictionary.each do |dict_word| 
     if word.include?(dict_word)
      hash[dict_word] += 1
     end
    end
    hash
  end
end

# Test inputs from spec
dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
input_test = "Howdy partner, sit down! How's it going?"

# Will return true if my output matches spec output
p sub_strings(input_test, dict) == { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }