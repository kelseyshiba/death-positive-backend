class CreateDeaths < ActiveRecord::Migration[6.0]
  def change
    create_table :deaths do |t|
      t.string :person
      t.string :date

      t.timestamps
    end
  end
end
