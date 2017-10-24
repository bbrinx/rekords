class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.string :name
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
