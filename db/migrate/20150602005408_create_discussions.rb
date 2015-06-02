class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.integer :sender_id #This will hold the id of the person starting the conversation
      t.integer :recipient_id #This will hold the id of the id of the other person in the chat

      t.timestamps
    end

    add_index :discussions, :sender_id
    add_index :discussions, :recipient_id
  end
end
