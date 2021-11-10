User.destroy_all

u1 = User.create :first_name => 'Bob', :email => 'bob@smith.com', :password => 'chicken'
u2 = User.create :first_name => 'Sam', :email => 'sam@smith.com', :password => 'chicken', :admin => true

puts "#{User.count} users created"

Flight.destroy_all

f1 = Flight.create :departure_date => '01-05-2022', :origin => 'Sydney', :destination => 'Los Angeles'
f2 = Flight.create :departure_date => '01-06-2022', :origin => 'Melbourne', :destination => 'Waikiki'

puts "#{Flight.count} flights created"

Plane.destroy_all

p1 = Plane.create :name => 'soHigh', :rows => 10, :cols => 2
p2 = Plane.create :name => 'notHighEnough', :rows => 5, :cols => 4

puts "#{Plane.count} planes created"

Reservation.destroy_all

r1 = Reservation.create :seat => '1A'
r2 = Reservation.create :seat => '1B'

puts "#{Reservation.count} reservations created"

u1.reservations << r1
u2.reservations << r2

f1.reservations << r1
f2.reservations << r2

p1.flights << f1
p2.flights << f2

