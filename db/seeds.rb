# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

death = Death.create(person: 'Shiba', date: Date.today)

ceremony = Ceremony.create(location: '111 1st Street, Omaha, NE 88888',
    kind: 'burial', speaker: 'Pastor John', narrative: 'Starts at 9am, then party, then food, then drinking!', name: 'Memorial of',
    cost: 400.00,
    death_id: death.id
)



services = Service.create(
    house: 'agent name',
    inventory: 'list of all the stuff I have',
    communications: 'notify the following entities upon death',
    will: 'is it complete or not?',
    certificate: 'need one to give to folks once gone',
    death_id: death.id
)

list = List.create(first_name: 'Kelsey', last_name: 'Shiba', email: 'kelsey@kelsey.com', phone: '33300044411', ceremony_id: ceremony.id)