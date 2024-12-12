def bubblesort(array)
  
  (0...array.length).each do |i|
   
    (0...array.length-i-1).each do |j|
      if(array[j] > array[j+1])
         temp= array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
    end
    end
 p array
end
 bubblesort([4,3,78,2,0,2])