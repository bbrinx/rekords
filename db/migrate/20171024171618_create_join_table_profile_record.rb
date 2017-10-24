class CreateJoinTableProfileRecord < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Profiles, :Records do |t|
      # t.index [:profile_id, :record_id]
      # t.index [:record_id, :profile_id]
    end
  end
end
