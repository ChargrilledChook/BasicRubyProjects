# frozen_string_literal: true

def stock_picker(stocks)
  lowest_price = stocks[0] + 1
  best_profit = 0
  best_combo = []

  stocks.each_with_index do |stock, i|
    next unless stock < lowest_price

    lowest_price = stock
    slice_array = stocks[i..-1]
    slice_array.each_with_index do |_price, j|
      if slice_array[j] - slice_array[0] > best_profit
        best_profit = slice_array[j] - slice_array[0]
        best_combo = [slice_array[0], slice_array[j]]
      end
    end
  end
  combo_index = [stocks.index(best_combo[0]), stocks.index(best_combo[1])]
  puts "Buy on day #{combo_index[0]} at $#{best_combo[0]} and sell on day #{combo_index[1]} at $#{best_combo[1]} for a profit of $#{best_profit}"
  combo_index
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 10, 1])
# => [1,4]  # for a profit of $15 - $3 == $12
