class EditEvent < ActiveRecord::Migration[5.2]
  def change
  	remove_column :events,:start_time
  	add_column :events, :start_time,:datetime
  	add_column :events, :end_time,:datetime
  	add_column :events, :dead_line,:datetime
  	add_column :events, :release,:boolean
  	add_column :events, :accepted,:boolean
  	add_column :events, :accepted_number,:integer
  end
end
