# frozen_string_literal: true

def merge_sort(array)
  # If only one number - quit
  return array if array.length == 1

  split_point = (array.length / 2).floor

  # Sort left half of numbers
  left = merge_sort(array[0..split_point - 1])

  # Sort right half of numbers
  right = merge_sort(array[split_point..])

  # Merge sorted halves
  sorted = []
  until left.empty? && right.empty?
    left.any? && (right.empty? || left[0] < right[0]) ? sorted.push(left.shift) : sorted.push(right.shift)
  end
  sorted
end

test1 = [3, 2, 1, 13, 8, 5, 0, 1]
test2 = [105, 79, 100, 110]

p merge_sort(test1)
p merge_sort(test2)
