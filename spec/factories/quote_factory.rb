FactoryBot.define do
  factory :quote do
    name { Faker::TvShows::BreakingBad.episode }
  end
end
