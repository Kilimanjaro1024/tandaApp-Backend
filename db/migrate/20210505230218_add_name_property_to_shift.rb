class AddNamePropertyToShift < ActiveRecord::Migration[6.1]
  def change
    add_column :newshifts, :name, :string
  end
end
