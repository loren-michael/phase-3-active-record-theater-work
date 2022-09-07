Audition.destroy_all
Role.destroy_all

puts "Creating auditions"
Audition.create(actor: "Cristina Ricci", location: "California", phone: 8675309, hired: true, role_id: 1)
Audition.create(actor: "Devon Sawa", location: "Maine", phone: 9002345, hired: true, role_id: 2)
Audition.create(actor: "Jonathan", location: "Vermont", phone: 2345678, hired: false, role_id: 2)
Audition.create(actor: "Samantha", location: "New York", phone: 18005555555, hired: false, role_id: 3)

puts "Creating roles"
Role.create(character_name: "Wednesday Addams")
Role.create(character_name: "Casper")
Role.create(character_name: "Maggie")

puts "Seeding done!"