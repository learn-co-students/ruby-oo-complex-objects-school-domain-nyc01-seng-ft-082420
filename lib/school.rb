require 'pry'
class School

  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name,grade)
    roster[grade] ||= []
    roster[grade] <<name
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    sorted = {}
    self.roster.each{ |grade,student|
      sorted[grade] = student.sort
    }
    sorted
  end

end
