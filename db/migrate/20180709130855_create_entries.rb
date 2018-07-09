class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.integer :event_id
      t.boolean :accecpted,default: false

      t.timestamps
    end
  end
end
