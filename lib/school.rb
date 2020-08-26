# code here!
require "pry"

class School

  attr_accessor :school_name, :roster, :student

  # @roster = {}

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)

    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end


  def grade(num)
    return @roster[num]
  end

  def sort
    @roster.each do |key, name_array|
      @roster[key] = name_array.sort
    end
    @roster
  end
end
