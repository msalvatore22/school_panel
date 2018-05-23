class Cohort < ApplicationRecord
  belongs_to :course
  has_many :student_cohorts
  has_many :teacher_cohorts
  has_many :students, through: :student_cohorts
  has_one :teacher, through: :teacher_cohort
end
