require('minitest/autorun')
require('minitest/reporters')
require_relative('../code_clan_students.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < Minitest::Test


  def test_student_name()
    student = Student.new("Antonio","G18")
    assert_equal("Antonio",student.get_name)
  end
end
