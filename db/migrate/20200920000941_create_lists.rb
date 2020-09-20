class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.references :ceremony, null: false, foreign_key: true
      t.timestamps
    end
  end
end
