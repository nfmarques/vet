class Schedule < ActiveRecord::Base
  belongs_to :clinic
  belongs_to :auto_email_content
end
