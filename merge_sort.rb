def merge_sort(array)
  return array if array.length < 2
  half = array.length / 2
  left = merge_sort(array[0...half])
  right = merge_sort(array[half...array.length])
  merge(left, right)
end

def merge(left, right)
  sorted = []
  while left.length > 0 && right.length > 0 do
    if left.first <= right.first
      sorted.push(left.shift)
    else
      sorted.push(right.shift)
    end
  end
  if left.length > 0
    sorted += left
  else
    sorted += right
  end
  sorted
end