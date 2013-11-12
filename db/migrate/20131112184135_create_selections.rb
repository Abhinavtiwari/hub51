class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.string :diner
      t.integer :first_starter_id
      t.integer :second_starter_id
      t.integer :first_entree_id
      t.integer :second_entree_id
      t.text :comments
    end
  end
end
