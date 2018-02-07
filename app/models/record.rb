class Record < ApplicationRecord
  belongs_to :category
  belongs_to :profile
  belongs_to :location
end
