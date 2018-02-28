class User < ApplicationRecord
  has_many :readings
  has_many :books, through: :readings


  def matching_users
    # TODO: return all users having at least one common book read, ordered by common books read count
    User
      .select('users.name, COUNT(readings.book_id) AS matchs')
      .joins(:readings)
      .where('readings.book_id IN (?)', self.books.select(:id))
      .where('users.id != ?', self.id)
      .group('users.id')
      .order('matchs DESC')

    # SELECT users.name, count(readings.book_id) AS matchs FROM readings
    # JOIN users ON users.id = readings.user_id
    # WHERE readings.book_id IN (21, 22, 23, 24)
    # 	AND users.id != 12
    # GROUP BY users.id
    # ORDER BY  matchs DESC
  end
end
