sentences = [
  "Hello world",
  "hello Ruby",
  "Ruby is awesome",
  "World is big"
]
hash={}
new_word=sentences.join(" ").downcase
word=new_word.split
word.each do |words|
  hash[words]=hash.fetch(words, 0)+1
end
 puts hash
# Write a Ruby method word_frequency that takes an array of strings as input. Each string contains a sentence. The method should:
# 1. Count the frequency of each word across all the sentences (case-insensitive).
# 2. Return a hash where keys are the words, and values are their respective frequencies.
