class Quote < ApplicationRecord
  has_many :line_item_dates, dependent: :destroy

  validates :name, presence: true

  scope :ordered, -> { order(id: :desc) }

  broadcasts_to ->(_quote) { "quotes" }, inserts_by: :prepend
end
