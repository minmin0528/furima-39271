class ApplicationRecord < ActiveRecord::Base
  validates :text, presence: true
end
