class Mergesort
  
  def initialize(size)
    @arr=Array.new(size)
  end
  
  def mergesort(arr,low,high)
  
  return if low >=high
    
    mid=(low+high)/2
    mergesort(arr,low,mid)
    mergesort(arr,mid+1,high)
    merge(arr,low,mid,high)
  
  end

  def merge(arr,low,mid,high)
  temp=Array.new()
  left=low
  right=mid+1
  while left <= mid && right <= high  
    if arr[left] <= arr[right]
      temp.push(arr[left])
      left+=1  # left = left+1
    else 
      temp.push(arr[right])
      right+=1
    end
  end
  while left<=mid
    temp.push(arr[left])
    left+=1
  end
  while right<=high
    temp.push(arr[right])
    right+=1
  end
  
  i=low
  while(i<=high)
    arr[i]=temp[i-low]
    i+=1
  end
  end


def  setvalues()
     print "Enter the size of array : "
    size = gets.to_i
      arr=Array.new(size)
     puts "Enter the value : "
    i=0
    while (i< arr.length)
    value = gets
    begin 
    arr[i]=Integer(value)  
    i+=1
    rescue StandardError
    puts "Please enter a valid number"
    end
    end
    def printarray()                                        
      p @arr
    end
end

print "Enter the size of array : "
size = gets.to_i

merge=Mergesort.new(size)
merge.setvalues()
quick.printarray()

end