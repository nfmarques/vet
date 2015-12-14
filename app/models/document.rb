class Document < ActiveRecord::Base

  belongs_to :history_item
  belongs_to :document_type

end
