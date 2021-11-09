class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :manufacturer
      t.date :date_of_purchase
      t.references :owner, foreign_key: true
      t.string :rc_number

      t.timestamps
    end
  end
end
