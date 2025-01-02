module WordFrequencyCounter
  def self.process_string(str)
    str.downcase.gsub(/[^a-z\s]/, '').split
  end

  # Method to recursively count words in an array or hash
  def self.count_words_in_structure(data, word_count)
    case data
    when String
      process_string(data).each do |word|
        word_count[word] = word_count.fetch(word, 0) + 1
      end
    when Array
      data.each { |element| count_words_in_structure(element, word_count) }
    when Hash
      data.each_pair do |key, value|
        process_string(key.to_s).each { |word| word_count[word] = word_count.fetch(word, 0) + 1 }
        # Recursively process the value (which can be string, array, or hash)
        count_words_in_structure(value, word_count)
      end
    end
  end

  # Main method to count word frequencies
  def self.word_frequency_counter(input)
    word_count = {}

    count_words_in_structure(input, word_count)

    word_count
  end
end

# Example Input (Array with nested hashes and arrays)
input3 = [
  'Hello world',
  { 
    'Ruby language' => 'is fun',
    details: [
      'Ruby rocks', 
      { 'hello again' => 'world is round' }
    ]
  },
  [
    'Complex structures are interesting',
    { more_data: ['Hello', 'world of Ruby'] }
  ]
]

output3 = WordFrequencyCounter.word_frequency_counter(input3)
puts output3

