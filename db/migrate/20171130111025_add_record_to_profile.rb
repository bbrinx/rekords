class AddRecordToProfile < ActiveRecord::Migration[5.1]
  def change
    add_reference :records, :profile, index: true
  end
end
