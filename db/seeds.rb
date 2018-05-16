# This file should contain all the record createion needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



400.times do |index|
  Student.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, age: Faker::Number.between(14, 18), highest_completed_education: "Middle-School")
end

p "created #{Student.count} students"

16.times do |index|
  Teacher.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, age: Faker::Number.between(22, 60), salary: 57000, highest_completed_education: "Master's Degree")
end

p "created #{Teacher.count} teachers"


Course.create(name: "Math", total_in_class_hours: "180")


Course.create(name: "English", total_in_class_hours: "180")


Course.create(name: "Science", total_in_class_hours: "180")


Course.create(name: "History", total_in_class_hours: "180")


Cohort.create(name: "Freshman Math", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 1)
Cohort.create(name: "Sophomore Math", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 1)
Cohort.create(name: "Junior Math", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 1)
Cohort.create(name: "Senior Math", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 1)

Cohort.create(name: "Freshman English", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 2)
Cohort.create(name: "Sophomore English", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 2)
Cohort.create(name: "Junior English", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 2)
Cohort.create(name: "Senior English", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 2)

Cohort.create(name: "Freshman Science", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 3)
Cohort.create(name: "Sophomore Science", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 3)
Cohort.create(name: "Junior Science", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 3)
Cohort.create(name: "Senior Science", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 3)

Cohort.create(name: "Freshman History", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 4)
Cohort.create(name: "Sophomore History", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 4)
Cohort.create(name: "Junior History", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 4)
Cohort.create(name: "Senior History", start_date: DateTime.new(2018,9,4), end_date: DateTime.new(2019,6,10), course_id: 4)