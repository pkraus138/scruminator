# == Schema Information
#
# Table name: teams
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

RSpec.describe Team, type: :model do
  context "database columns" do
    it { should have_db_column(:name).of_type(:string) }
  end

  context "associations" do
    it { should have_many(:users) }
  end
end
