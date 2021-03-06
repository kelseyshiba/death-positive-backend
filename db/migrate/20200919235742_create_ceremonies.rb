class CreateCeremonies < ActiveRecord::Migration[6.0]
  def change
    create_table :ceremonies do |t|
      t.string :location_name
      t.string :address 
      t.string :city
      t.string :state
      t.string :zip
      t.string :kind
      t.string :speaker
      t.text :narrative
      t.string :name
      t.float :cost
      t.references :death, null: false, foreign_key: true

      t.timestamps
    end
  end
end
