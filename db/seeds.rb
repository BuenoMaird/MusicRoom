# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Conversation.destroy_all
Message.destroy_all



u1 = User.create( :name => "Wolf", :instruments => "Roli Seaboard, Teenage Engineering OP-1, Eigenharp", :interests => "Being hipster", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "WOLF", :password_confirmation => "WOLF", :ip_address => "88.190.229.170" )

u2 = User.create( :name => "Bueno", :instruments => "Roli Seaboard, Teenage Engineering OP-1, Eigenharp", :interests => "Being hipster", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "Bueno", :password_confirmation => "Bueno", :ip_address => "121.44.3.96" )

u3 = User.create( :name => "Steve", :instruments => "Roli Seaboard, Teenage Engineering OP-1, Eigenharp", :interests => "Being hipster", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "Steve", :password_confirmation => "Steve", :ip_address => "121.44.3.96" )

u4 = User.create( :name => "Barry", :instruments => "Roli Seaboard, Teenage Engineering OP-1, Eigenharp", :interests => "Being hipster", :website => "https://www.roli.com/products/seaboard-grand", :image => "http://bigcitymusic.com/images/op1_3_5842.jpg", :dob => "01/01/1901", :password => "Barry", :password_confirmation => "Barry", :ip_address => "121.44.3.96" )

c1 = Conversation.create( :conversation_id => 1, :user_id => 1 )
c2 = Conversation.create( :conversation_id => 2, :user_id => 2 )
c3 = Conversation.create( :conversation_id => 3, :user_id => 3 )

m1 = Message.create( :conversation_id => 1, :content => 'Hello world from message 1')
m2 = Message.create( :conversation_id => 2, :content => 'Hello world from message 2')
m3 = Message.create( :conversation_id => 3, :content => 'Hello world from message 3')

