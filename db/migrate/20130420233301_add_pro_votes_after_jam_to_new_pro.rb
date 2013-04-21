class AddProVotesAfterJamToNewPro < ActiveRecord::Migration
  def change
    add_column :new_pros, :proVotesAfterJam, :integer
  end
end
