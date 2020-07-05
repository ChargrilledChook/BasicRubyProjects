# frozen_string_literal: true

def sub_strings(string, dictionary)
  string.downcase.split.each_with_object(Hash.new(0)) do |word, hash|
    dictionary.each do |dict_word|
      hash[dict_word] += 1 if word.include?(dict_word)
    end
  end
end

# Test inputs from spec
dict = %w[below down go going horn how howdy it i low own part partner sit]
input_test = "Howdy partner, sit down! How's it going?"

# Will return true if my output matches spec output
p sub_strings(input_test, dict) == { 'down' => 1, 'how' => 2, 'howdy' => 1, 'go' => 1, 'going' => 1, 'it' => 2, 'i' => 3, 'own' => 1, 'part' => 1, 'partner' => 1, 'sit' => 1 }
