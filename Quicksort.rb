class Quicksort
  
  #It will initialize and create the array
  def initialize(size)
    @arr=Array.new(size)
  end

  def setvalue()
      puts "Enter the value : "
      i=0
      while (i< @arr.length)
        value = gets
        begin 
          @arr[i]=Integer(value)  
          i+=1
        rescue StandardError
          puts "Please enter a valid number"
        end
      end
      quicksort(@arr,0, @arr.length-1)                 # calling quick sort method to sort an array
  end

  def quicksort(arr,low,high)
    if low<high
      p_index = parition(arr,low,high)
      quicksort(arr,low,p_index-1)
      quicksort(arr,p_index+1,high)
    end
  end                                            #End of Quicksort fucntion

  def parition(arr,low,high)
    pivot =arr[low]
    i=low
    j=high
    while(i<j)  
      while arr[i]<=pivot && i<=high-1
        i+=1
      end
      while arr[j]>pivot && j>=low+1
        j-=1
      end
      arr[i],arr[j]=arr[j],arr[i] if i<j
      
      end
      arr[low],arr[j]=arr[j],arr[low]
    return j
  end                           #End Of parition function 

  # printing the array 
  def printarray()                                        
    p @arr
  end
end

print "Enter the size of array : "
size = gets.to_i
quick=Quicksort.new(size)
quick.setvalue()
quick.printarray()
