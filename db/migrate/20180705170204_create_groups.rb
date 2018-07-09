class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :email,unique:true
      t.string :name
      t.string :captain_name
      t.string :tel
      t.string :password_digest

      t.timestamps
    end
  end
end
