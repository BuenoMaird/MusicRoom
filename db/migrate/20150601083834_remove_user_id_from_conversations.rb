class RemoveUserIdFromConversations < ActiveRecord::Migration
  def change
    remove_column :conversations, :user_id
  end
end
