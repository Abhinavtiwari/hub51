class CreateRestrictions < ActiveRecord::Migration
  def change
    create_table :restrictions do |t|
      t.integer :starter_id
      t.integer :entree_id
    end
  end
end
