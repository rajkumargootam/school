# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def seed_Klass(title)
Klass.find_or_create_by(title: title)
print ". "
end

puts "# Seeding klasses"
["First","Second","Third","Four"].each do |title|
  seed_Klass(title)
end
puts " Done."
