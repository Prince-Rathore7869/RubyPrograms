# Write a Ruby program to find the longest substring and it's length in a given string that 
# contains only unique characters.
# For example: `pwwkew`
# Output: `wke`, 3
class LongestSubstring
  def initialize(str)
    @str = str
  end

  def find_longest_unique_substring
    max_len = 0
    max_substr = ""

    for i in 0...( @str.length)
      #a set to track unique characters in the current substring
      chars_seen = Set.new
      current_substr = ""

      for j in i...( @str.length)
        char = @str[j]
        
        if chars_seen.include?(char)
          break
        end
        
        # add the character to the set and to the current substring
        chars_seen.add(char)
        current_substr += char
      end
      
      # Update the longest substring if the current one is longer
      if current_substr.length > max_len
        max_len = current_substr.length
        max_substr = current_substr
      end
    end
     [max_substr, max_len] 
  end
end

input_str = "pwuiwkeuiw"
obj = LongestSubstring.new(input_str)
result = obj.find_longest_unique_substring
print result