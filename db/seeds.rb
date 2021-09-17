# Creating club
puts "Creating Clubs.."
%w(Friends_forever Scrabble).each{|club_name| p Club.find_or_create_by(name: club_name, city: 'Indore', country: 'India') }

puts "Creating Users"
%w(Shubham Abhishek Vijay Ramesh).each do |initial| 
  user = User.new(first_name: initial, last_name: 'Rajput', email: "#{initial}@mailinator.com", club_id: 1, password: '123456')
  user.save
end
