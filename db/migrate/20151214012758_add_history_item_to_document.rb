class AddHistoryItemToDocument < ActiveRecord::Migration
  def change
    add_reference :documents, :history_item, index: true, foreign_key: true
  end
end
