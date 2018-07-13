class ChangeColumnNameInteresting < ActiveRecord::Migration[5.2]
  def change
  	rename_column :interestings, :event_id,:group_id
  end
end
