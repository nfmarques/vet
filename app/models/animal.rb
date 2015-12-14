class Animal < ActiveRecord::Base

  belongs_to :race
  belongs_to :category
  belongs_to :gender
  belongs_to :clinic

  has_many :history_items

end
