class Vikings
  attr_accessor :name, :age,:health, :damage
  def initialize(name,age,health)
    @name = name
    @age =  age
    @health = health
    
  end
  
  def attack(damage)
    @health -= damage
     puts "YAAAAAAA"
  end
 
end

viking = Vikings.new("Prince",23,100)
puts viking.attack(30)
puts viking.health


# class Array
#   def each
#     puts "HAHAH no one here"
#   end
# end
# [1,2,3].each {|item| puts item}