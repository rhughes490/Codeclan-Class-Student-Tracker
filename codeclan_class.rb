class StudentAccount

  # constructor method
  def initialize(student_name, cohort, talk)
    # @ -> instance variable / property / attribute
    @student_name = student_name
    @cohort = cohort
    @talk = talk
  end

   # getters

   def student_name
     return @student_name
   end

   def cohort
     return @cohort
   end

   def talk
    return @talk
   end

   # setters

   def set_student_name(student_name)
     @student_name = student_name
   end

   def set_cohort(cohort)
     @cohort = cohort
   end

   def say_favourite_language(favourite_language)
     return "I love " + favourite_language
   end
   
end