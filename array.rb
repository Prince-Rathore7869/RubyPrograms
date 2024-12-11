array=["Prince","Singh","Rathore"]
array.push("hello");
array<<("Hi")

#for removing element
array.pop()                #This method will remove the last element
array.pop(2)               #Will remove last 2element

#For Shifting

 array.unshift("Hi")
array.shift                #This will remove the first element 

#Length Method
#puts array.size

#Subtraction in array
x=["Prince","Singh","rathore","Hi"]
y=["Hi"]
#puts  ["Prince","Singh","rathore","Hi"]-["Hi"]

#chaining method

chain=["hi","this","is","prince"]    # In this reverse will call first and then join then capitalize
puts chain.reverse.join(" ").capitalize    #capitalize will capital the first letter of first element
