# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all



u1 = User.create( :name => "Wolf", :instruments => "Triangle", :interests => "Being hipster", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "WOLF", :password_confirmation => "Wolf", :ip_address => "88.190.229.170" )

u2 = User.create( :name => "Bueno", :instruments => "The spoons, Mandolin", :interests => "Being hipster", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "Bueno", :password_confirmation => "Bueno", :ip_address => "202.171.181.44" )

u3 = User.create( :name => "Steve", :instruments => "Drums, Harmonica", :interests => "Being hipster", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "Steve", :password_confirmation => "Steve", :ip_address => "202.171.181.44" )

u4 = User.create( :name => "Barry", :instruments => "Piano, PVC piping", :interests => "Being hipster", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "Barry", :password_confirmation => "Barry", :ip_address => "202.171.181.44" )


