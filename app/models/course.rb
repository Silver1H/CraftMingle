class Course < ApplicationRecord
  belongs_to :user
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_subject,
    against: [ :subject ],
    using: {
      tsearch: { prefix: true }
    }
end
