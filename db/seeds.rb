User.destroy_all

u1 = User.create :first_name => 'Bob', :email => 'bob@smith.com', :password => 'chicken'
u2 = User.create :first_name => 'Sam', :email => 'sam@smith.com', :password => 'chicken', :admin => true

puts "#{User.count} users created"

Flight.destroy_all

f1 = Flight.create :flightDate => '01-05-2022', :origin => 'Sydney', :destination => 'Los Angeles', :seats => "{1A: Jonny, 1B: Tommy}"
f2 = Flight.create :flightDate => '01-06-2022', :origin => 'Melbourne', :destination => 'Waikiki', :seats => "{1A: Brian, 1B: Sharon}"

puts "#{Flight.count} flights created"

Plane.destroy_all

p1 = Plane.create :name => 'soHigh', :rows => 20, :columns => 4
p2 = Plane.create :name => 'notHighEnough', :rows => 30, :columns => 6

puts "#{Plane.count} planes created"

f1.users << u1 << u2
f2.users << u1 << u2

p1.flights << f1
p2.flights << f2