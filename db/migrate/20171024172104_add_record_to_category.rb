class AddRecordToCategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :records, :category, index: true
  end
end
