class AddIndexToGroupsEmail < ActiveRecord::Migration[5.2]
  def change
  	add_index :groups, :email, unique:true
  end
end
