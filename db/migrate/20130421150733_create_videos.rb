class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url
      t.string :eaten
      t.string :proVotes

      t.timestamps
    end
  end
end
