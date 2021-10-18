require_relative '../book'

class CreateBook
    def create_book(books)
        print 'Title: '
        title = gets.chomp
        print 'Author: '
        author = gets.chomp
    
        book = Book.new(title, author)
        books << book unless books.include?(book)
        puts 'Book created successfully'
        
      end
end