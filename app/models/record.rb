class Record < ApplicationRecord
  belongs_to :Category, optional: true
  belongs_to :Profile, optional: true
end
