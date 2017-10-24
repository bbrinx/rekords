class AddProfileToGroup < ActiveRecord::Migration[5.1]
  def change
    add_reference :profiles, :group, index: true
  end
end
