class CreateNewshifts < ActiveRecord::Migration[6.1]
  def change
    create_table :newshifts do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.integer :break_length
      t.integer :org

      t.timestamps
    end
  end
end
