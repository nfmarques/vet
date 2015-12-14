class Clinic < ActiveRecord::Base

  has_many :animals
  has_many :schedules
  has_many :users, through: :user_clinics

end
