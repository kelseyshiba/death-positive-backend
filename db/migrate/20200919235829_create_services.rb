class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :house
      t.text :inventory
      t.text :communications
      t.string :certificate
      t.string :will
      t.references :death, null: false, foreign_key: true

      t.timestamps
    end
  end
end
