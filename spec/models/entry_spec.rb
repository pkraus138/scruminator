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
require "rails_helper"

RSpec.describe Entry, type: :model do
  context "database columns" do
    it { should have_db_column(:date).of_type(:datetime) }
    it { should have_db_column(:impediments).of_type(:text) }
    it { should have_db_column(:today).of_type(:text) }
    it { should have_db_column(:user_id).of_type(:integer) }
    it { should have_db_column(:yesterday).of_type(:text) }
  end

  context "associations" do
    it { should belong_to(:user) }
  end
end
