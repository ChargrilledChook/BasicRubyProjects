# Define a function with 1 parameter for an int arry
def bubble_sort(int_arr)
  # Set a swap counter to a non 0 value
  swap_counter = 1
  # Start a loop that continues until swap counter is 0
  until swap_counter == 0 do
    # Set swap counter to zero
    swap_counter = 0
    # Start a loop iterating over the array n - 1 times
    int_arr.each_with_index do |_number, idx|
      if int_arr[idx + 1] == nil
        break
      end
      # Each iteration compare num i vs num i + 1
      if int_arr[idx] > int_arr[idx + 1]
        # If num i is bigger, swap the two values and increment the swap counter
        int_arr[idx], int_arr[idx + 1] = int_arr[idx + 1], int_arr[idx]
        swap_counter += 1
      end
    end
  end
  #return the result
  return int_arr
end

test_arr = [4,3,78,2,0,2]
p bubble_sort(test_arr) #=> [0,2,2,3,4,78]
