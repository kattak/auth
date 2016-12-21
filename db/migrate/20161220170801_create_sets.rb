class CreateSets < ActiveRecord::Migration
  def change
    create_table :sets do |t|
      t.string :title
    end
  end
end
