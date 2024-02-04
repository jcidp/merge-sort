# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length == 1

  half = arr.length / 2
  arr1 = merge_sort(arr[0...half])
  arr2 = merge_sort(arr[half..])
  result = []
  result << (arr1[0] < arr2[0] ? arr1.shift : arr2.shift) while arr1.length.positive? && arr2.length.positive?
  result.concat(arr1, arr2)
end

p merge_sort([3, 1])
p merge_sort([105, 79, 100, 110])
p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
