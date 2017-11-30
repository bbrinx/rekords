class Record < ApplicationRecord
  belongs_to :Category
  belongs_to :Profile
end
