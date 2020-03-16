require('minitest/autorun')
require('minitest/reporters')
require_relative('../library.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestLibrary < Minitest::Test
    def setup()
    @library = Library.new(
      [
        {
          title: "lord of the rings",
          rental_details: {
                          student_name: "Jeff",
                          due_date: "01/12/16"
                          }

        }
      ]
    )
    end

def test_get_book()

  assert_equal(
    {
    title: "lord of the rings",
    rental_details: {student_name: "Jeff",due_date: "01/12/16"}
                    }, @library.get_book)
end

def test_get_book_title_details
  assert_equal(
    {
    title: "lord of the rings",
    rental_details: {student_name: "Jeff",due_date: "01/12/16"}
                    }, @library.get_book_title_details("lord of the rings"))
end

def test_get_book_title_gives_rental_details()
  assert_equal({student_name: "Jeff",due_date: "01/12/16"}, @library.get_book_title_gives_rental_details("lord of the rings"))
end







end
