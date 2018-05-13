class CreateTeacherCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_cohorts do |t|
      t.integer :teacher_id
      t.integer :cohort_id
    end
  end
end
