numbers = [4, 3, 78, 2, 0, 2, 200, 1, 57, 82, 17, 12, 6743, 124, 23]

def bubble_sort(array_to_sort = [])
  swap_count_per_loop = -1
  passes = 0

  until swap_count_per_loop == 0
    swap_count_per_loop = 0

    array_to_sort.each_index do |i|
      next unless i != 0
      next unless array_to_sort[i] < array_to_sort[i - 1]

      current_number = array_to_sort[i]
      array_to_sort[i] = array_to_sort[i - 1]
      array_to_sort[i - 1] = current_number
      swap_count_per_loop += 1
    end

    passes += 1
  end

  p array_to_sort
  puts "Total number of passes: #{passes}"
end

bubble_sort(numbers)
