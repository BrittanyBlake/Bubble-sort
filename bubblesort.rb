def bubble_sort(array)
  sorted = false
  until sorted
    sorted = true
    (0...array.length - 1).each do |i|
      if array[i] > array [i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end

  end

  array
end

def bubble_sort_by(arr)
    (0...arr.length - 1).each do |i|
      (1...arr.length - i).each do |j|
        next unless j != arr.length - 1

        word = yield(arr[j], arr[j + 1])

        arr[j], arr[j + 1]  = arr[j + 1], arr[j] if word.positive?
      end
    end

  arr
end


print bubble_sort_by(%w[hi hello hey]) { |first, second|
  first.length - second.length
}
puts

print bubble_sort_by(%w[hi my name is davis and my partner is brittany]) { |first, second|
  first.length - second.length
}
puts

print bubble_sort([4, 3, 78, 2, 0, 2])
