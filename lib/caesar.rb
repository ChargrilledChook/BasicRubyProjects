# frozen_string_literal: true

def caesar(message, code)
  coded = message.bytes.map do |digit|
    if digit.between?(97, 122) # 97 - 122 is the range for lowercase ascii characters
      (digit - 97 + code) % 26 + 97
    elsif digit.between?(65, 90) # 65 - 90 is the range for uppercase
      (digit - 65 + code) % 26 + 65
    else
      digit
    end
  end
  decoded = coded.map(&:chr).join
end

pasta = 'Yum, pasta!!'
puts caesar(pasta, -5000) #=> Qme, hskls!!
