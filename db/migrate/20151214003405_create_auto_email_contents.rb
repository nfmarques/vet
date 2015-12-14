class CreateAutoEmailContents < ActiveRecord::Migration
  def change
    create_table :auto_email_contents do |t|
      t.string :subject
      t.text :body

      t.timestamps null: false
    end
  end
end
