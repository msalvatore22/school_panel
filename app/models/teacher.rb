class Teacher < ApplicationRecord
  has_one :teacher_cohort
  has_many :cohorts, through: :teacher_cohorts
end
