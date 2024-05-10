class Course < ApplicationRecord
  belongs_to :user
  has_many :bookings

  include PgSearch::Model
  pg_search_scope :search_by_subject,
    against: [ :subject ],
    using: {
      tsearch: { prefix: true }
    }
end
