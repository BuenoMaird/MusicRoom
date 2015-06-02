class Text < ActiveRecord::Base
  belongs_to :discussion
  belongs_to :user

  validates_presence_of :body, :discussion_id, :user_id
end
