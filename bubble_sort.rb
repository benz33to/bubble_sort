# frozen_string_literal: true

def bubble_sort(numbers)
  iterations = numbers.length - 1
  movements = numbers.length - 1
  iterations.times do
    (0...movements).each_with_index do |_, left|
      right = left + 1
      numbers[left], numbers[right] = numbers[right], numbers[left] if numbers[left] > numbers[right]
    end
    movements -= 1
  end
  numbers
end

p bubble_sort([4, 3, 78, 2, 0, 2])
