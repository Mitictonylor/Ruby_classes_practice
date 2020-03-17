require('minitest/autorun')
require('minitest/reporters')
require_relative('../code_clan_students.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < Minitest::Test
  def setup()
    @student = Student.new("Antonio","G18")
  end


  def test_student_name()
    assert_equal("Antonio",@student.get_name())
  end


  def test_student_cohort()
    assert_equal("G18", @student.get_cohort())
  end
#The one where we can update a studens name
  def test_set_student_name()
    #GIVEN i have a student with the name "David"
    #student_david= Student.new("David", "G40")
    #WHEN i set the students name to "David E"
    #student_david.set_name("David E")
    #THEN the name should be "David E"
    #assert_equal("David E", student_david.get_name())
    @student.set_name("Gino")
    assert_equal("Gino", @student.get_name())
  end

  def test_set_student_cohort()
    @student.set_cohort("G19")
    assert_equal("G19", @student.get_cohort())
  end

  def test_talk()
    assert_equal("I can talk", @student.talk())
  end

  def test_say_favourite_language()
    assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
  end


end
