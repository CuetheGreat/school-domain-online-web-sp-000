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
    ROSTER.each do |key, val|
      val.sort { |a,b| a <=> b }
    end
  end
    
end