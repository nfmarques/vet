class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :send_email_date
      t.boolean :active
      t.references :clinic, index: true, foreign_key: true
      t.references :auto_email_content, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
