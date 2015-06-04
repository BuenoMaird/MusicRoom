# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  instruments     :text
#  interests       :text
#  website         :text
#  image           :text
#  dob             :date
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string
#  admin           :boolean          default(FALSE)
#  lat             :float
#  lon             :float
#  ip_address      :string
#

class User < ActiveRecord::Base

  has_many :discussions, :foreign_key => :sender_id, dependent: :destroy

  has_secure_password
  validates :name, :presence => true
  validates :password, :presence => true
  validates :instruments, :presence => true
  validates :dob, :presence => true

  geocoded_by :ip_address,
  :latitude => :lat, :longitude => :lon
  
  after_validation :geocode
end
