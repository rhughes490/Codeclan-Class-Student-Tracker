require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_class')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudentAccount < MiniTest::Test

#getters
  def test_a_student_name
     # instantiation
     # object / instance = the return from the constructor for StudentAccount class 
     student_account = StudentAccount.new("John", "E40", "I can talk!")
     assert_equal("John", student_account.student_name())
   end

   def test_cohort
     student_account = StudentAccount.new("John", "E40", "I can talk!")
     assert_equal("E40", student_account.cohort())
   end

   def test_talk
    #arrange
    student_account = StudentAccount.new("John", "E40", "I can talk!")
    #assert
    assert_equal("I can talk!", student_account.talk())
  end

  #setters

   def test_can_update_the_student_name
     # Arrange
     student_account = StudentAccount.new("John", "E40", "I can talk!")
     # Act
     student_account.set_student_name("Alice")
     # Assert
     assert_equal("Alice", student_account.student_name())
   end

   def test_can_change_cohort_of_student
     student_account = StudentAccount.new("John", "E40", "I can talk!")
     student_account.set_cohort("E39")
     assert_equal("E39", student_account.cohort())
   end

   def test_can_add_favourite_language_of_student
    student_account = StudentAccount.new("John", "E40", "I can talk!")
    fav_language = student_account.say_favourite_language("Ruby")
    assert_equal("I love Ruby", fav_language)
  end

end