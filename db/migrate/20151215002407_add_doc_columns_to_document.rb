class AddDocColumnsToDocument < ActiveRecord::Migration
  def up
    add_attachment :documents, :doc
  end

  def down
    remove_attachment :documents, :doc
  end
end
