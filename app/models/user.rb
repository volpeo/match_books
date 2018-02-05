class User < ApplicationRecord
  has_many :readings
  has_many :books, through: :readings


  def matching_users
    # TODO: return all users having at least one common book read, ordered by common books read count
  end
end
