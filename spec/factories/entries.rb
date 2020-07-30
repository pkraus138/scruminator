# == Schema Information
#
# Table name: entries
#
#  id          :bigint           not null, primary key
#  date        :datetime
#  impediments :text
#  today       :text
#  yesterday   :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_entries_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :entry do
    date        { Date.today }
    yesterday   { Faker::Hipster.sentence }
    today       { Faker::Hipster.sentence }
    impediments { Faker::Hipster.sentence }
    user
  end
end
