require('minitest/autorun')
require('minitest/reporters')
require_relative('../code_clan_students.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < Minitest::Test
  def setup()
    @student = Student.new("Antonio","G18")
  end


  def test_student_name()
    assert_equal("Antonio",@student.get_name)
  end

  def test_student_cohort()
    assert_equal("G18", @student.get_cohort)
  end 
end
