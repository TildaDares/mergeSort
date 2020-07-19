# frozen_string_literal :true

def merge_sort(array)
  return array if array.length < 2

  half_length_array = (array.length / 2).round
  left_side_array = array.take(half_length_array)
  right_side_array = array.drop(half_length_array)
  merge(merge_sort(left_side_array), merge_sort(right_side_array))
end

def merge(left_side_array, right_side_array)
  sorted = []
  until left_side_array.empty? || right_side_array.empty?
    sorted << if left_side_array.first <= right_side_array.first
                left_side_array.shift
              else
                right_side_array.shift
                end
  end
  sorted.concat(left_side_array).concat(right_side_array)
end

p merge_sort([56, 9, 46, 2, 90, 23, 12])
