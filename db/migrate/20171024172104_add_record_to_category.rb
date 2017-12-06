class AddRecordToCategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :records, :category, foreign_key: true
  end
end
