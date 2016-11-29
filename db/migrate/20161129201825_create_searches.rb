class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :phonenumber
      t.string :location
      t.string :category

      t.timestamps null: false
    end
  end
end
