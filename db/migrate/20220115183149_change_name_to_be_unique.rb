class ChangeNameToBeUnique < ActiveRecord::Migration[5.2]
  def change
    change_column :measurements, :name, :string, unique: true
  end
end
