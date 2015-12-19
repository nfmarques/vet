class Document < ActiveRecord::Base

  belongs_to :history_item
  belongs_to :document_type

  has_attached_file :doc,
                    :styles => {:medium => "300x300>", :thumb => "100x100>"},
                    :default_url => "/images/:style/missing.png",
                    {
                        :preserve_files => "true"
  :url => "/system/:hash.:extension",
      :hash_secret => "longSecretString"
  }

  validates_attachment :doc,
                       :content_type => {:content_type => ["image/jpeg", "image/gif", "image/png", "application/pdf", "application/msword"]}

end
