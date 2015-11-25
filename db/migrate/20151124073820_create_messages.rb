class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.integer :user
      t.string :thumb
      t.text :content
      t.integer :follows

      t.timestamps null: false
    end
  end
end
