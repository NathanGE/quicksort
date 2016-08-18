def quicksort(array)
  return array if array.length <= 1
  pivot = array.shift
  left, right = array.partition { |item| item < pivot }
  array = quicksort(left) + [pivot] + quicksort(right)
end

ary = [9, 7, 5, 11, 12, 2, 14, 3, 10, 4, 6]
p quicksort(ary)

