# code here!

class School
  
  #ROSTER = {}
  
  def initialize(name)
    @name = name
  end
  
  def roster
   ROSTER
  end
  
  def add_student(name, grade)
     key = ROSTER.keys.find { |i| i == grade }
     puts key
    if key
      ROSTER[grade] << name
    else
      ROSTER[grade] = []
      ROSTER[grade] << name
    end
  end
  
  def grade(grade_num)
    ROSTER.select do |key, value|
      if key == grade_num
        value
      end
    end
  end
  
  
  def sort
    ROSTER.sort
  end
    
end