class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :term
      t.string :definition
      t.integer :set_id
    end
  end
end
