# == Schema Information
#
# Table name: conversations
#
#  id      :integer          not null, primary key
#  user_id :integer
#

class Conversation < ActiveRecord::Base
  has_and_belongs_to_many :messages
  has_and_belongs_to_many :users
end
