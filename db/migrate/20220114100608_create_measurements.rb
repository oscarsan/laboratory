class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.string :name
      t.string :unit
      t.string :upper_limit
      t.string :lower_limit

      t.timestamps
    end
  end
end
