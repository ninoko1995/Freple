class CreateInterestings < ActiveRecord::Migration[5.2]
  def change
    create_table :interestings do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
