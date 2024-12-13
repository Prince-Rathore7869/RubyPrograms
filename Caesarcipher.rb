#In this program ,firstly  we are converting in array index from a to z by range function.Second,we are storing the ch index 
#by alphabet_arr in index and by module getting the index and then by increasing the position of character then storing in result
#If you want the right shift then Use + opeartor and for left shift use - Operator

def caesar_cipher(string ,position) 
    alphabet_arr=('a'..'z').to_a
    result=""
    string.each_char do |ch|
        if ch>='a' && ch<='z'
            index =alphabet_arr.index(ch)
            index =(index-position)%26
            result +=alphabet_arr[index]
        elsif  ch>='A' && ch<='Z'
            index =alphabet_arr.index(ch.downcase)
            index =(index-position)%26
            result +=alphabet_arr[index].upcase
        else
            result +=ch
        end
    end
    return result
end

puts caesar_cipher("abc",1)
    