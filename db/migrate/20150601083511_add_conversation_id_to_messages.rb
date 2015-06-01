class AddConversationIdToMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :sender_id
    add_column :messages, :conversation_id, :integer
  end
end
