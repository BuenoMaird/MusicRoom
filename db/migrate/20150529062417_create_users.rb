class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :instruments
      t.text :interests
      t.text :website
      t.text :image
      t.date :dob

      t.timestamps
    end
  end
end
