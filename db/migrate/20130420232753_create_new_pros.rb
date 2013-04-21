class CreateNewPros < ActiveRecord::Migration
  def change
    create_table :new_pros do |t|
      t.string :name
      t.string :lastName
      t.string :phoneNumber
      t.integer :country

      t.timestamps
    end
  end
end
