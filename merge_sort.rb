def merge_sort(array1, array2 = [])
  if array1.length > 1
    half = array1.length / 2
    array1 = merge_sort(array1.slice(0...half), array1.slice(half..-1))
  end
  if array2.length > 1
    half = array2.length / 2
    array2 = merge_sort(array2.slice(0...half), array2.slice(half..-1))
  end

  sorted_array = []
  loop do
    if array1.length == 0
      sorted_array.concat array2
      break
    elsif array2.length == 0
      sorted_array.concat array1      
      break
    else
      if array1[0] < array2[0] 
        sorted_array << array1.shift
      else
        sorted_array << array2.shift
      end
    end
  end
  sorted_array
end
