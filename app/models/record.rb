class Record < ApplicationRecord
  belongs_to :Category
  has_and_belongs_to_many :profiles
end
