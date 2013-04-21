class AddPhoneToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :phone, :string
  end
end
