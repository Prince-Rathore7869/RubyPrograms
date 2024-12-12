def Substring(string,dictionary)
  hash =Hash.new(0)  
  word_array = string.split(" ")
  p word_array                 #it will create the new hash {}
   word_array.each do |str_word|
    dictionary.each do |dict_word|           #it will iterate each element
        if(str_word.include?dict_word)
          hash[dict_word]+=1
        end
    end 
  end
     p hash
end

dictionary = ["below","down","low","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
Substring("Howdy partner, sit down! How's it going?",dictionary)