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

print bubble_sort([4, 3, 78, 2, 0, 2])

print bubble_sort([23, 6, 1, 100, 50, 1000])
