class C_variable
  @@count=0
  def initialize
    @@count+=1
    puts "The value is: #{@@count}"
  end
end
class Child_Variable < C_variable
  def display_classvariable
    @@count+=1
    puts "the new value is :#{@@count}"
  end
end
variable=Child_Variable.new
variable.display_classvariable
