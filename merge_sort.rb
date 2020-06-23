def merge_sort(array)
  return array if array.length < 2
  half_length_array = (array.length/2).round
  left_side_array = array.take(half_length_array)
  right_side_array = array.drop(half_length_array)
  sorted_left = merge_sort(left_side_array)
  sorted_right = merge_sort(right_side_array)
  merge(sorted_left, sorted_right, array)
  array
end

def merge(left_side_array, right_side_array, array)
  left_size = left_side_array.length
  right_size = right_side_array.length
  left_side_array.empty? ? right_side_array : left_side_array
  i = 0
  j = 0
  k = 0
  while (i < left_size) && (j < right_size)
    if left_side_array[i] <= right_side_array[j]
      array[k] = left_side_array[i]
      i += 1
    else
      array[k] = right_side_array[j]
      j += 1
    end
      k += 1
  end
  while i < left_size
    array[k] = left_side_array[i]
      i += 1
      k += 1
  end
  while j < right_size
    array[k] = right_side_array[j]
      j += 1
      k += 1
  end
  array
end

p merge_sort([56, 9])
