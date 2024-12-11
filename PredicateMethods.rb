#Include method  (.inlcude?)
numbers=[20,500,400,499]

a=numbers.include?(500)
#puts a

#Any Method (.any?)

number=[10,20,30,40]

a1=number.any?{|numbers| numbers>5}
#puts a1

#All method 
fruit=["apple","banana","cheery"]
a2=fruit.all?{|fruits| fruits.length>5}

#puts a2


#None? method
fruits = ["apple", "banana", "strawberry", "pineapple"]
puts fruits.none? { |fruit| fruit.length > 10 }
puts fruits.none? { |fruit| fruit.length > 3 }
