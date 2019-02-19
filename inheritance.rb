class Student
  def initialize name, grade
    @name = name
    @grade = grade
  end

  def better_grade_than? student
    @grade > student.grade ? true : false
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new('Joe', 85)
# puts joe.grade
bob = Student.new('Bob', 70)
# puts bob.grade
puts joe.better_grade_than?(bob)