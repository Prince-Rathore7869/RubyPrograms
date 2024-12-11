class Book
    attr_accessor :title, :author
    def initialize(title, author)
        @title=title                       #Instance variable
        @author=author                       #Instance variable
    end
end

book1=Book.new("HelloWorld","Prince Singh")
book2=Book.new("Harry Potter","rathore")
puts book1.title
