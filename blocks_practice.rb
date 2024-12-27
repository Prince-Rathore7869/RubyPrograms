# def  awesome_method
#   yield('Hello','Prince','Singh')
# end
# #It depends upon the blocks that how many arugements we are passing
# awesome_method do |adjective,noun|
#   puts "Say #{adjective} to #{noun}"
# end

#We can use the blacoks with hash also and can use each do also with blocks
#  def awesome_method
#    hash={name:"Prince", age: 23}
#    hash .each do |key, value|
#    yield key,value
#    end
#  end

#  awesome_method {|key,value| puts " #{key} : #{value}"}

 #We can check the block is given or not 
 def check_block
   if block_given?
     puts "Yo block is present"
   end
   puts "Block is not present but will executed"
 end
 #below method call will print the both cases because it is just the empty block
 check_block  {}  
 check_block