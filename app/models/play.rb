class Play < ApplicationRecord
  validates :name, presence: true
  varidates :email, presence: true
end
