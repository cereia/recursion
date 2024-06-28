# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length <= 1

  left_half = merge_sort(arr.slice!(0...arr.length / 2))
  right_half = merge_sort(arr)
  merge(left_half, right_half)
end

def merge(left, right, sorted = [])
  until left.empty? && right.empty?
    return sorted + right if left.empty?
    return sorted + left if right.empty?

    sorted.push left[0] <= right[0] ? left.shift : right.shift
  end
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
# => [0, 1, 1, 2, 3, 5, 8, 13]
p merge_sort([105, 79, 100, 110])
# => [79, 100, 105, 110]
