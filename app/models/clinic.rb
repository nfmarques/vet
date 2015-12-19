class Clinic < ActiveRecord::Base

  has_many :animals
  has_many :schedules
  has_many :users, through: :user_clinics

  validates :clinic_name, presence: true
  validates :clinic_name, uniqueness: true
  validates :email, format: /@/

end
