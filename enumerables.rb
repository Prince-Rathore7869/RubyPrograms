#this is for selecting the elments in array
#friends=["Prince",'Singh',"Rathore",'Ayush',"Gupta"]

#arr = friends.select{|friend| friend !="Ayush" && friend != "Gupta"}
#puts arr


#Below is for selecting [each] element from a array in other variable and {} is block and frind is block variable

#friends=["Prince",'Singh',"Rathore",'Ayush',"Gupta"]

#arr = friends.each{|friend| puts "Hello, "+ friend}


#Another example of each enumerable

# my_hash= { "one" => 1,"two"=>2}

# my_hash.each{|key,value|puts "#{key} is #{value}"}


#Each Enumerable
# my_array=[1,2]
# my_array.each do |num|
#     num *=2
#     puts "New number is:#{num}"
# end

#Map method
friend=["prince","singh","rathore"]   #This is normal method
Hello=[]
friend.each{|friends| Hello.push(friends.upcase)}  #here we created the friends variable and then by push method also using upcase we pushed the elements in emtpy array

#puts Hello

#we can improve the above program by MAP Method
friend=["Prince","Rathore"]
a=friend.map{|friends|  friends.upcase}
puts a                        #we can use the gsub in place of frind.upase to replacegsub("rathore","Singh")
                               #a=friend.map(|friends| friends.gsub("Rathore","Singh"))


