# This file should contain all the record createion needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



20.times do |index|
  Student.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, age: Faker::Number.between(14, 18), highest_completed_education: "High-school")
end

p "created #{Student.count} students"

6.times do |index|
  Teacher.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, age: Faker::Number.between(22, 60), salary: 70000, highest_completed_education: "PhD")
end

p "created #{Teacher.count} teachers"


Course.create(name: "Cognitive Psychology", total_in_class_hours: "45")
Course.create(name: "Phsysiological Psychology", total_in_class_hours: "45")
Course.create(name: "Statistical Methods Behavioral Science", total_in_class_hours: "45")
Course.create(name: "Optimal Human Functioning", total_in_class_hours: "45")
Course.create(name: "Motivation", total_in_class_hours: "45")
Course.create(name: "Child Development", total_in_class_hours: "45")

Cohort.create(name: "Cognitive Pyschology Fall", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2018,12,21), course_id: 1)
Cohort.create(name: "Cognitive Psychology Spring", start_date: DateTime.new(2019,1,7), end_date: DateTime.new(2019,6,10), course_id: 1)

Cohort.create(name: "Phsysiological Psychology Fall", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,12,21), course_id: 2)
Cohort.create(name: "Phsysiological Psychology Spring", start_date: DateTime.new(2019,1,7), end_date: DateTime.new(2019,6,10), course_id: 2)

Cohort.create(name: "Statistical Methods Fall", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,12,21), course_id: 3)
Cohort.create(name: "Statistical Methods Spring", start_date: DateTime.new(2019,1,4), end_date: DateTime.new(2019,6,10), course_id: 3)

Cohort.create(name: "Optimal Human Functioning Fall", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,12,21), course_id: 4)
Cohort.create(name: "Optimal Human Functioning Spring", start_date: DateTime.new(2019,1,7), end_date: DateTime.new(2019,6,10), course_id: 4)

Cohort.create(name: "Motivation Fall", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,12,21), course_id: 5)
Cohort.create(name: "Motivation Spring", start_date: DateTime.new(2019,1,7), end_date: DateTime.new(2019,6,10), course_id: 5)

Cohort.create(name: "Child Development Fall", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,12,21), course_id: 6)
Cohort.create(name: "Child Development Spring", start_date: DateTime.new(2019,1,7), end_date: DateTime.new(2019,6,10), course_id: 6)

TeacherCohort.create(teacher_id: 1, cohort_id: 1)
TeacherCohort.create(teacher_id: 1, cohort_id: 2)

TeacherCohort.create(teacher_id: 2, cohort_id: 3)
TeacherCohort.create(teacher_id: 2, cohort_id: 4)

TeacherCohort.create(teacher_id: 3, cohort_id: 5)
TeacherCohort.create(teacher_id: 3, cohort_id: 6)

TeacherCohort.create(teacher_id: 4, cohort_id: 7)
TeacherCohort.create(teacher_id: 4, cohort_id: 8)

TeacherCohort.create(teacher_id: 5, cohort_id: 9)
TeacherCohort.create(teacher_id: 5, cohort_id: 10)

TeacherCohort.create(teacher_id: 6, cohort_id: 11)
TeacherCohort.create(teacher_id: 6, cohort_id: 12)

StudentCohort.create(student_id: 1, cohort_id: 1)
StudentCohort.create(student_id: 1, cohort_id: 3)
StudentCohort.create(student_id: 1, cohort_id: 5)
StudentCohort.create(student_id: 1, cohort_id: 7)
StudentCohort.create(student_id: 1, cohort_id: 9)
StudentCohort.create(student_id: 1, cohort_id: 11)

StudentCohort.create(student_id: 2, cohort_id: 1)
StudentCohort.create(student_id: 2, cohort_id: 3)
StudentCohort.create(student_id: 2, cohort_id: 5)
StudentCohort.create(student_id: 2, cohort_id: 7)
StudentCohort.create(student_id: 2, cohort_id: 9)
StudentCohort.create(student_id: 2, cohort_id: 11)

StudentCohort.create(student_id: 3, cohort_id: 1)
StudentCohort.create(student_id: 3, cohort_id: 3)
StudentCohort.create(student_id: 3, cohort_id: 5)
StudentCohort.create(student_id: 3, cohort_id: 7)
StudentCohort.create(student_id: 3, cohort_id: 9)
StudentCohort.create(student_id: 3, cohort_id: 11)

StudentCohort.create(student_id: 4, cohort_id: 1)
StudentCohort.create(student_id: 4, cohort_id: 3)
StudentCohort.create(student_id: 4, cohort_id: 5)
StudentCohort.create(student_id: 4, cohort_id: 7)
StudentCohort.create(student_id: 4, cohort_id: 9)
StudentCohort.create(student_id: 4, cohort_id: 11)

StudentCohort.create(student_id: 5, cohort_id: 1)
StudentCohort.create(student_id: 5, cohort_id: 3)
StudentCohort.create(student_id: 5, cohort_id: 5)
StudentCohort.create(student_id: 5, cohort_id: 7)
StudentCohort.create(student_id: 5, cohort_id: 9)
StudentCohort.create(student_id: 5, cohort_id: 11)

StudentCohort.create(student_id: 6, cohort_id: 1)
StudentCohort.create(student_id: 6, cohort_id: 3)
StudentCohort.create(student_id: 6, cohort_id: 5)
StudentCohort.create(student_id: 6, cohort_id: 7)
StudentCohort.create(student_id: 6, cohort_id: 9)
StudentCohort.create(student_id: 6, cohort_id: 11)

StudentCohort.create(student_id: 7, cohort_id: 1)
StudentCohort.create(student_id: 7, cohort_id: 3)
StudentCohort.create(student_id: 7, cohort_id: 5)
StudentCohort.create(student_id: 7, cohort_id: 7)
StudentCohort.create(student_id: 7, cohort_id: 9)
StudentCohort.create(student_id: 7, cohort_id: 11)

StudentCohort.create(student_id: 8, cohort_id: 1)
StudentCohort.create(student_id: 8, cohort_id: 3)
StudentCohort.create(student_id: 8, cohort_id: 5)
StudentCohort.create(student_id: 8, cohort_id: 7)
StudentCohort.create(student_id: 8, cohort_id: 9)
StudentCohort.create(student_id: 8, cohort_id: 11)

StudentCohort.create(student_id: 9, cohort_id: 1)
StudentCohort.create(student_id: 9, cohort_id: 3)
StudentCohort.create(student_id: 9, cohort_id: 5)
StudentCohort.create(student_id: 9, cohort_id: 7)
StudentCohort.create(student_id: 9, cohort_id: 9)
StudentCohort.create(student_id: 9, cohort_id: 11)

StudentCohort.create(student_id: 10, cohort_id: 1)
StudentCohort.create(student_id: 10, cohort_id: 3)
StudentCohort.create(student_id: 10, cohort_id: 5)
StudentCohort.create(student_id: 10, cohort_id: 7)
StudentCohort.create(student_id: 10, cohort_id: 9)
StudentCohort.create(student_id: 10, cohort_id: 11)

StudentCohort.create(student_id: 11, cohort_id: 2)
StudentCohort.create(student_id: 11, cohort_id: 4)
StudentCohort.create(student_id: 11, cohort_id: 6)
StudentCohort.create(student_id: 11, cohort_id: 8)
StudentCohort.create(student_id: 11, cohort_id: 10)
StudentCohort.create(student_id: 11, cohort_id: 12)

StudentCohort.create(student_id: 12, cohort_id: 2)
StudentCohort.create(student_id: 12, cohort_id: 4)
StudentCohort.create(student_id: 12, cohort_id: 6)
StudentCohort.create(student_id: 12, cohort_id: 8)
StudentCohort.create(student_id: 12, cohort_id: 10)
StudentCohort.create(student_id: 12, cohort_id: 12)

StudentCohort.create(student_id: 13, cohort_id: 2)
StudentCohort.create(student_id: 13, cohort_id: 4)
StudentCohort.create(student_id: 13, cohort_id: 6)
StudentCohort.create(student_id: 13, cohort_id: 8)
StudentCohort.create(student_id: 13, cohort_id: 10)
StudentCohort.create(student_id: 13, cohort_id: 12)

StudentCohort.create(student_id: 14, cohort_id: 2)
StudentCohort.create(student_id: 14, cohort_id: 4)
StudentCohort.create(student_id: 14, cohort_id: 6)
StudentCohort.create(student_id: 14, cohort_id: 8)
StudentCohort.create(student_id: 14, cohort_id: 10)
StudentCohort.create(student_id: 14, cohort_id: 12)

StudentCohort.create(student_id: 15, cohort_id: 2)
StudentCohort.create(student_id: 15, cohort_id: 4)
StudentCohort.create(student_id: 15, cohort_id: 6)
StudentCohort.create(student_id: 15, cohort_id: 8)
StudentCohort.create(student_id: 15, cohort_id: 10)
StudentCohort.create(student_id: 15, cohort_id: 12)

StudentCohort.create(student_id: 16, cohort_id: 2)
StudentCohort.create(student_id: 16, cohort_id: 4)
StudentCohort.create(student_id: 16, cohort_id: 6)
StudentCohort.create(student_id: 16, cohort_id: 8)
StudentCohort.create(student_id: 16, cohort_id: 10)
StudentCohort.create(student_id: 16, cohort_id: 12)

StudentCohort.create(student_id: 17, cohort_id: 2)
StudentCohort.create(student_id: 17, cohort_id: 4)
StudentCohort.create(student_id: 17, cohort_id: 6)
StudentCohort.create(student_id: 17, cohort_id: 8)
StudentCohort.create(student_id: 17, cohort_id: 10)
StudentCohort.create(student_id: 17, cohort_id: 12)

StudentCohort.create(student_id: 18, cohort_id: 2)
StudentCohort.create(student_id: 18, cohort_id: 4)
StudentCohort.create(student_id: 18, cohort_id: 6)
StudentCohort.create(student_id: 18, cohort_id: 8)
StudentCohort.create(student_id: 18, cohort_id: 10)
StudentCohort.create(student_id: 18, cohort_id: 12)

StudentCohort.create(student_id: 19, cohort_id: 2)
StudentCohort.create(student_id: 19, cohort_id: 4)
StudentCohort.create(student_id: 19, cohort_id: 6)
StudentCohort.create(student_id: 19, cohort_id: 8)
StudentCohort.create(student_id: 19, cohort_id: 10)
StudentCohort.create(student_id: 19, cohort_id: 12)

StudentCohort.create(student_id: 20, cohort_id: 2)
StudentCohort.create(student_id: 20, cohort_id: 4)
StudentCohort.create(student_id: 20, cohort_id: 6)
StudentCohort.create(student_id: 20, cohort_id: 8)
StudentCohort.create(student_id: 20, cohort_id: 10)
StudentCohort.create(student_id: 20, cohort_id: 12)

