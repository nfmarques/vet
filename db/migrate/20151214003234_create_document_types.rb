class CreateDocumentTypes < ActiveRecord::Migration
  def change
    create_table :document_types do |t|
      t.string :description
      t.string :image_path

      t.timestamps null: false
    end
  end
end
