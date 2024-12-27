def raise_and_rescue
  begin
    a=10/0

  raise "Exception created"
    puts "after excution"

  rescue
      puts "We are able to  save the execution"
  end
  puts "Outside"
end
raise_and_rescue