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
#

class User < ActiveRecord::Base

  has_secure_password
  validates :name, :presence => true
end
