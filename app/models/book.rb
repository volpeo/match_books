class Book < ApplicationRecord
  has_many :readings
  has_many :users, through: :readings
end
