# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all


u1 = User.create( :name => "Wolf", :instruments => "Triangle", :interests => "Progressive soup rock", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "Wolfie", :password_confirmation => "Wolfie", :ip_address => "88.190.229.170")

u2 = User.create( :name => "Bueno", :instruments => "The spoons, Mandolin", :interests => "Blues", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "Buenoie", :password_confirmation => "Buenoie", :ip_address => "202.171.181.44")

u3 = User.create( :name => "Steve", :instruments => "Drums, Harmonica", :interests => "Heavy metal", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "Steveie", :password_confirmation => "Steveie", :ip_address => "202.171.181.44")

u4 = User.create( :name => "Barry", :instruments => "Piano, PVC piping", :interests => "Soul music", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "Barryie", :password_confirmation => "Barryie", :ip_address => "202.171.181.44")

u5 = User.create( :name => "Harry", :instruments => "Hang-drum", :interests => "Rock and pop", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "Harryie", :password_confirmation => "Harryie", :ip_address => "202.171.181.44")


