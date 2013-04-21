class AddEatenToPerformLogins < ActiveRecord::Migration
  def change
    add_column :perform_logins, :eaten, :string
  end
end
