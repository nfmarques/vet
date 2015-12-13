class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|

      t.string :animal_name
      t.string :owner_name
      t.date :birth_date
      t.integer :weigth

      t.timestamps null: false
    end
  end
end
