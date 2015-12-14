class CreateHistoryItems < ActiveRecord::Migration
  def change
    create_table :history_items do |t|
      t.text :observation
      t.references :animal, index: true, foreign_key: true
      t.references :document, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
