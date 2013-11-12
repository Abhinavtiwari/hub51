class CreateStarters < ActiveRecord::Migration
  def change
    create_table :starters do |t|
      t.string :name
      t.string :description
      t.integer :category_id
    end
  end
end
