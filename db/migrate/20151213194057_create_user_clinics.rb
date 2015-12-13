class CreateUserClinics < ActiveRecord::Migration
  def change
    create_table :user_clinics do |t|
      t.references :user
      t.references :clinic

      t.timestamps null: false
    end
  end
end
