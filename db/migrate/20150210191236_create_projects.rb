class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.text :link
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
