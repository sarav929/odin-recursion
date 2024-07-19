# merge sort using recursion

def merge_sort(array)

  return array if array.length <= 1

  half_point = array.length / 2
  left = array[0...half_point]
  right = array[half_point...array.length]
  
  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  sorted = []
  i = 0
  j = 0
  
  while i < sorted_left.length && j < sorted_right.length
    if sorted_left[i] <= sorted_right[j]
      sorted << sorted_left[i]
      i += 1
    else
      sorted << sorted_right[j]
      j += 1
    end
  end

  return sorted.concat(sorted_left[i..-1]).concat(sorted_right[j..-1])

end

array = [10, 5, 3, 7, 8, 22]

p merge_sort(array)