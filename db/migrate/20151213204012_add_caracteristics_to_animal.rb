class AddCaracteristicsToAnimal < ActiveRecord::Migration
  def change
    add_reference :animals, :race, index: true, foreign_key: true
    add_reference :animals, :gender, index: true, foreign_key: true
    add_reference :animals, :category, index: true, foreign_key: true
    add_reference :animals, :clinic, index: true, foreign_key: true

  end

end
