require('minitest/autorun')
require('minitest/reporters')
require_relative('../code_clan_students.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBankAccount < Minitest::Test

end
