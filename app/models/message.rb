# == Schema Information
#
# Table name: messages
#
#  id              :integer          not null, primary key
#  content         :text
#  created_at      :datetime
#  updated_at      :datetime
#  conversation_id :integer
#

class Message < ActiveRecord::Base
  belongs_to :conversation
  has_many :users, :through => :conversations
end
