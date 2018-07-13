class RenameColumn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :entries, :accecpted, :accepted
  end
end
