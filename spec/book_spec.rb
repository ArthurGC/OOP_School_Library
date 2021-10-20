require_relative '../classes/book.rb'
require_relative '../classes/teacher.rb'
require_relative '../classes/rental.rb'

describe Book do

    title = "Maths"
    author = "Lorenzo"
    let(:book) { Book.new title, author }
    let(:teacher) {Teacher.new(24, title, author)}


    it "takes two parameters and returns a Book object" do
        expect(book).to be_an_instance_of(Book)
    end

    it "returns the correct title" do
        expect(book.title).to eq(title)
    end

    it "returns the correct author" do
        expect(book.author).to eq(author)
    end

    it "returns the rental when runs add_rental method" do
        expect(book.add_rental(teacher,'2021/10/20')).to be_an_instance_of(Rental)
    end

    it "returns the right person when runs add_rental method" do
        expect(book.add_rental(teacher,'2021/10/20').person).to eq(teacher)
    end
end