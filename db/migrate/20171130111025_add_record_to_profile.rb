class AddRecordToProfile < ActiveRecord::Migration[5.1]
  def change
    add_reference :records, :profile, foreign_key: true
  end
end
