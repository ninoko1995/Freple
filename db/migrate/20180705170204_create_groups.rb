class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :email
      t.string :name
      t.string :captain_name
      t.string :tel

      t.timestamps
    end
  end
end
