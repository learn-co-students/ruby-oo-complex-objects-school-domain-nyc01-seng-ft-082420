# code here!
require 'pry'
class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name, grade)
    if @roster[grade]
    else
      @roster[grade]=[]
    end
    @roster[grade] << name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    sorted_students_hash = {}
    @roster.collect do | grade, names |
      sorted_students = names.sort
      sorted_students_hash[grade]= sorted_students
      # binding.pry
    end
    sorted_students_hash
  end
end