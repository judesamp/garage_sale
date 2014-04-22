class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :age
      t.integer :awesome_rating

      t.timestamps
    end
  end
end
