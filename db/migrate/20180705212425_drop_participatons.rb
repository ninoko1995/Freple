class DropParticipatons < ActiveRecord::Migration[5.2]
  def change
  	drop_table :participatons
  end
end
