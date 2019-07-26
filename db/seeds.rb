Heroine.destroy_all
Power.destroy_all

p1 = Power.create(name:"super strength", description: "gives the wielder super-human strengths")
p2 = Power.create(name:"flight", description: "gives the wielder the ability to fly through the skies at supersonic speed")
p3 = Power.create(name:"super human senses", description: "allows the wielder to user her senses at a super-human level")
p4 = Power.create(name:"elasticity", description: "can stretch the human body to extreme lengths")

Heroine.create(name: "Kamala Khan", super_name: "Ms. Marvel", power_id: p1.id)
Heroine.create(name: "Doreen Green", super_name: "Squirrel Girl", power_id: p2.id)
Heroine.create(name: "Gwen Stacy", super_name:"Spider-Gwen", power_id: p3.id)
Heroine.create(name: "Janet Van Dyne", super_name:"The Wasp", power_id: p4.id)
Heroine.create(name: "Wanda Maximoff", super_name:"Scarlet Witch", power_id: p3.id)
Heroine.create(name: "Carol Danvers", super_name:"Captain Marvel", power_id: p2.id)
Heroine.create(name: "Jean Grey", super_name:"Dark Phoenix", power_id: p1.id)
Heroine.create(name: "Ororo Munroe", super_name:"Storm", power_id: p2.id)
Heroine.create(name: "Kitty Pryde", super_name:"Shadowcat", power_id: p3.id)
Heroine.create(name: "Elektra Natchios", super_name:"Elektra", power_id: p4.id)

# ---------------
# POWERFUL HEROINES:
# Once you set up your tables and associations the way you want them, you can
# uncomment the following method to associate heroine with a power!
# Just uncomment line 33 and run `rake db:seed` again in your terminal.
# (******Note****** If you try to do this before you set up proper associations, it will error.)
# ---------------
# heroines = heroines.map { |heroine| heroine.merge( { power_id: Power.all.sample.id } ) }
# ---------------

# heroines.each { |heroine| Heroine.create(heroine) }
