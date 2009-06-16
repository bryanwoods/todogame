class Task < ActiveRecord::Base
  
  def due_date
    due.to_s
  end
  
  def due_date=(str)
    self.due = Chronic.parse(str).to_date.to_s
    
  rescue
    @invalid_date = true
  end
    
  def validation
    errors.add :due_date, 'is not a valid date' if Chronic.parse(due_date.to_s).nil?
  end
end
