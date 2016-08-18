def quicksort(array, first, last)
  if array.length > 1
    return if first > last

    pivot = array[((first + last) * 0.5)]
    left = first
    right = last

    while left <= right
      while(array[left] < pivot) do
        left += 1
      end
      while(array[right] > pivot) do
        right -= 1
      end

      if left <= right
        tmp = array[left]
        array[left] = array[right]
        array[right] = tmp

        left += 1
        right -= 1
      end
    end

    quicksort(array, first, right)
    quicksort(array, left, last)
  end
end

ary = [9, 7, 5, 11, 12, 2, 14, 3, 10, 4, 6]
quicksort(ary, 0, (ary.length - 1))
p ary
