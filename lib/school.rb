# code here!

class School
  
  ROSTER = {}
  
  def initialize(name)
    ROSTER.clear
    @name = name
  end
  
  def roster
   ROSTER
  end
  
  def add_student(name, grade)
    if ROSTER.keys.include?(grade)
      ROSTER[grade] << name
    else
      ROSTER[grade] = []
      ROSTER[grade] << name
    end
  end
  
  def grade(grade_num)
    ROSTER[grade_num]
  end
  
  
  def sort
    ROSTER.sort.to_h
    ROSTER.colect { |key, value| {key => value.sort} }
    end
  end
    
end