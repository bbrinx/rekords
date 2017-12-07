class CreateRecordSearchTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :record_search_terms do |t|

      t.timestamps
    end
  end
end
