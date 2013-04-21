class CreatePerformLogins < ActiveRecord::Migration
  def change
    create_table :perform_logins do |t|
      t.string :phone
      t.string :loginCode
      t.string :isactive

      t.timestamps
    end
  end
end
