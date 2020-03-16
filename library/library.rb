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

  def get_book_title_details(name)
    for book in @books
      if book[:title] == name
      return book
      end
    end
  end
  def get_book_title_gives_rental_details(name)
    for book in @books
      if book[:title] == name
      return book[:rental_details]
      end
    end
  end



end
