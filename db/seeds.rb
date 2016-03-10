# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'rubygems'
require 'faker'

def seed_klass(title)
  Klass.find_or_create_by(title: title)
  print ". "
end

def seed_Section(name)
  Klass.Section.find_or_create_by(klass_id: Klass.id, name: name)
  print ". "
end

def seed_student(section, roll_no)
  Section.students.find_or_create_by(roll_number: roll_no) do |student|
    student.name = "#{Faker::Name.name} #{last_name}"
    student.email = Faker::Internet.email
    student.gender = Student::Gender.all.sample
  end
  print ". "
end

puts "# Seeding klasses"
["First","Second","Third","Four"].each do |title|
  seed_klass(title)
end
puts " Done."

puts "# Seeding Sections"
["sectionA","sectionB","sectionC",""].each do |name|
  seed_Section(name)
end
puts " Done."

puts "# Seeding students"
 Section.all.each do |section|
  (1..(20+rand(6)).each do |roll_no|
      seed_student(section,roll_no)
   end
  end
end
puts " Done."
