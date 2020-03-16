class Library
  # attr_accessor :array
  def initialize(books)
    @books = books
  end

  def get_book()
    for book in @books
      return book
    end
  end

end
