class Animal < ActiveRecord::Base

  belongs_to :race
  belongs_to :category
  belongs_to :gender
  belongs_to :clinic

  has_many :history_items

  validates :birth_date, :format => {:with => /[1-2][0-9][0-9][0-9]\-[0-1][0-9]\-[0-3][0-9]/, :message => 'data invalida, formato aceite [yyyy-mm-dd]'}

  validates :gender_id, presence: true
  validates :race_id, presence: true
  validates :category, presence: true

end
