# == Schema Information
#
# Table name: conversations
#
#  id :integer          not null, primary key
#

class Conversation < ActiveRecord::Base
  has_many :messages
  has_and_belongs_to_many :users
end
