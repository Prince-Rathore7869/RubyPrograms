class Hotel
  def enter 
    puts "Customer is eneterd"
  end
  def type(customer)
    customer.type
  end
  def room(customer)
    customer.room
  end
end
class Single
  def type
    puts "The customer is single and floor is on 5th"
  end
  def room
    puts "The charges for single is 5000"
  end
end
 
class Couple
  def type
    puts "The customer is couple and floor is on 2nd"
  end
  def room
    puts "The charges is 9000 for couples"
  end
end

hotel=Hotel.new
puts "Visitor is single"
customer=Single.new
hotel.type(customer)
hotel.room(customer)