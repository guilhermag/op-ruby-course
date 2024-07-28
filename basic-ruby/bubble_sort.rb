def bubble_sort(arr)
  (arr.length - 1).times do
    arr.each_with_index do |el, idx|
      if arr[idx + 1] != nil && el > arr[idx + 1]
        aux = arr[idx + 1]
        arr[idx + 1] = el
        arr[idx] = aux
      end
    end
  end
  arr
end

puts bubble_sort([4,3,78,2,0,2])
