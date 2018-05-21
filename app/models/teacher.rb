class Teacher < ApplicationRecord
  has_many :teacher_cohorts
  has_many :cohorts, through: :teacher_cohorts
end
