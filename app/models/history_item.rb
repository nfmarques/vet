class HistoryItem < ActiveRecord::Base
  belongs_to :animal
  belongs_to :document
  belongs_to :user
end
