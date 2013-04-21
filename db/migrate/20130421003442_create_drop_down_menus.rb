class CreateDropDownMenus < ActiveRecord::Migration
  def change
    create_table :drop_down_menus do |t|

      t.timestamps
    end
  end
end
