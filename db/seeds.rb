# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

u1 = User.create :name => "Priyanka", :email => "priyanka@ga.co"
u2 = User.create :name => "Alicia " , :email => "alicia@ga.co"
u3 = User.create :name => "Kresty", :email => "kresty@ga.co"
p "User count: #{User.all.count}"
p u1

Movie.destroy_all
m1 = Movie.create :name => "The Girl on the Train", :image => "http://www.takeitfrommummy.com/wp-content/uploads/The-Girl-on-the-Train.jpg"
m2 = Movie.create :name => "Deepwater Horizon", :image => "http://t2.gstatic.com/images?q=tbn:ANd9GcSoXHUjRemUrbCBO2Dsrw9lonK0kaaI0sLxm1sfwpK4ytlZt5Dm"
m3 = Movie.create :name => "Bridget Jones's Baby", :image => "http://t3.gstatic.com/images?q=tbn:ANd9GcQ913c5JSjY5IrCfXKGWFuloO84rDgJzmIi0JmsCWoP5MFoHCd4"
m4 = Movie.create :name => "Sully", :image => "http://t1.gstatic.com/images?q=tbn:ANd9GcS9yR6SXAsICEMPTSdGkb57DJ62JsTg6S5fdQvnPngAhBD7AuYv"
p "Movie count: #{Movie.all.count}"
p m1
# binding.pry
# u1.movies << m1
# u2.movies << m2
# u3.movies << m3

Ticket.destroy_all

# t1 = Ticket.create :items => "child", :quantity => 1, :price => 15
# t2 = Ticket.create :items => "Adults", :quantity => 2, :price => 20
# t3 = Ticket.create :items => "Student", :quantity => 3, :price => 26
# t4 = Ticket.create :items => "Pensioner", :quantity => 3, :price => 17
# p "Ticket count: #{Ticket.all.count}"
# p t1

Seat.destroy_all

Food.destroy_all
f1 = Food.create :items => "Large web combo", :quantity => 1, :price => 15
f2 = Food.create :items => "Medium web combo", :quantity => 1, :price => 13
p "Food count: #{Food.all.count}"
p f1
p f2
