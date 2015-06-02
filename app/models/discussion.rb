class Discussion < ActiveRecord::Base

  belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
  belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'User'

  has_many :texts, dependent: :destroy #This means that if the conversation (the parent element) is deleted the texts relating to that conversation will also be deleted.

  validates_uniqueness_of :sender_id, :scope => :recipient_id #This is checking to make sure duplicate conversations aren't created. Basically if the original recipient opens a chat to the original sender it will recognise there is already a discussion between the 2

  scope :involving, -> (user) do
    where("discussions.sender_id =? OR discussions.recipient_id =?",user.id,user.id)
  end #This checks if the logged in user has any previous conversations
 
  scope :between, -> (sender_id,recipient_id) do
    where("(discussions.sender_id = ? AND discussions.recipient_id =?) OR (discussions.sender_id = ? AND discussions.recipient_id =?)", sender_id,recipient_id, recipient_id, sender_id)
  end #This scope checks to see if there is already a conversation existing between 2 users already before creating a new

end
