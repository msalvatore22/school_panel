class CreateStudentCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :student_cohorts do |t|
      t.integer :student_id
      t.integer :cohort_id
    end
  end
end
