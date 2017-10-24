class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
