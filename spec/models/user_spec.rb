# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  admin                  :boolean          default(FALSE)
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  team_id                :bigint
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_team_id               (team_id)
#
# Foreign Keys
#
#  fk_rails_...  (team_id => teams.id)
#
require "rails_helper"

RSpec.describe User, type: :model do
  context "database columns" do
    it { should have_db_column(:admin).of_type(:boolean) }
    it { should have_db_column(:email).of_type(:string) }
    it { should have_db_column(:first_name).of_type(:string) }
    it { should have_db_column(:last_name).of_type(:string) }
  end

  context "associations" do
    it { should belong_to(:team).optional }
    it { should have_many(:entries) }
  end

  context "#full_name" do
    it "returns the user's full name" do
      user = create(:user)
      expect(user.full_name).to eq("#{user.first_name} #{user.last_name}")
    end
  end
end
