class AddProVotesToNewPro < ActiveRecord::Migration
  def change
    add_column :new_pros, :proVotes, :integer
  end
end
