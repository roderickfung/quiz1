# 9. Build a Ruby class called "Book". Objects of the Book class must have two attributes: title and chapters. Objects must have two methods: add_chapter and chapters. The `add_chapter` methods adds a chapter by giving it a title. The chapters method should display the number of chapters and lists all the chapters as in:

class Book
  attr_accessor :title
  $chaps = []
  def add_chapter(new_title)
    $chaps << new_title
  end

  def chapters
    count = 1
    puts "#{title} has #{$chaps.length} Chapters:"
    $chaps.each {|i| (puts "#{count}. #{i}." ; count+=1) }
  end
end

book = Book.new
book.title = "Epic Book"
book.add_chapter("Chapter 1")
book.add_chapter("Chapter 2")
book.add_chapter("Chapter 3")
book.add_chapter("Chapter 4")
book.chapters
