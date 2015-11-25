class CreateMircoposts < ActiveRecord::Migration
  def change
    create_table :mircoposts do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.string :thumb
      t.integer :followers

      t.timestamps null: false
    end
  end
end
