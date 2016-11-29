class CreateReportnumbers < ActiveRecord::Migration
  def change
    create_table :reportnumbers do |t|
      t.string :date
      t.string :timestamp
      t.string :phonenumber
      t.string :integer
      t.string :locationofnumber
      t.string :string
      t.string :category
      t.string :string
      t.string :description
      t.string :string

      t.timestamps null: false
    end
  end
end
