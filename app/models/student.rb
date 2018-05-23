class Student < ApplicationRecord
  has_many :student_cohorts
  has_many :cohorts, through: :student_cohorts

  def student_full_name
    "#{@student.first_name} #{@student.last_name}"
  end
  
end
