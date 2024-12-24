# Write a Ruby method word_frequency that takes an array of strings as input. Each string contains a sentence. The method should:
# 1. Count the frequency of each word across all the sentences (case-insensitive).
# 2. Return a hash where keys are the words, and values are their respective frequencies.
class CountFrequency
    def count_frequency(sentences)
     hash= Hash.new(0)
     word=sentences.join(" ").downcase.split
     word.each {|words| hash[words]  += 1 }
     hash
    end
    def count_word(word,sentences)
      get=sentences.join(" ").downcase.split.count(word)
      get
    end
    
end

sentences = ["Hello world","hello Ruby","Ruby is awesome","World is big"]

counts=CountFrequency.new

#puts counts.count_frequency(sentences)
print "Enter the word you want to search: "
word=gets.chomp
puts counts.count_word(word,sentences)