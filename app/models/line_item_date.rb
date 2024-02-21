class LineItemDate < ApplicationRecord
  belongs_to :quote

  validates :date, presence: true

  scope :ordered, -> { order(date: :asc) }
end
