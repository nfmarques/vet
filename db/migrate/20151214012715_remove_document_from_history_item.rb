class RemoveDocumentFromHistoryItem < ActiveRecord::Migration
  def change
    remove_foreign_key :history_items, :document
    remove_column :history_items, :document_id, :integer
  end
end
