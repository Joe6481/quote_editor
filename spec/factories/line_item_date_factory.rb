FactoryBot.define do
  factory :line_item_date do
    date { Faker::Date.between(from: Date.new(2000, 1, 1), to: Time.zone.today) }
  end
end
