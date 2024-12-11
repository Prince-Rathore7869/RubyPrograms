#here we will discuss the reduce enumerable method that it is useful to save the certain lines of code

array=[5,4,7,9]
a=array.reduce{ |sum,array| sum+array}   # can also set the accumalator value like reduce(100)
puts a  
                                 #then the sum will evaluate from 100 and op:125