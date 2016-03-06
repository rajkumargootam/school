# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def seed_klass(title)
  Klass.find_or_create_by(title: title)
  print ". "
end

def seed_Section(name)
  Klass.Section.find_or_create_by(klass_id: Klass.id, name: name)
  print ". "
end

puts "# Seeding klasses"
["First","Second","Third","Four"].each do |title|
  seed_klass(title)
end
puts " Done."

puts "# Seeding Sections"
["sectionA","sectionB","sectionC","sectionD"].each do |name|
  seed_Section(name)
end
puts " Done."
