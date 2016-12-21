class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.integer :width
      t.integer :height
      t.integer :card_id
    end
  end
end 
