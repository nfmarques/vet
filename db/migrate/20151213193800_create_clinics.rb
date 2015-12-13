class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|

      t.string :clinic_name
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
