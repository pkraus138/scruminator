require "rails_helper"

describe ApplicationHelper do
  describe "#avatar_url" do
    it "returns the correct url for a known email address" do
      known_email = "dude@yolo.com"
      known_result = "https://gravatar.com/avatar/117fcc6284fd6f752c3039ba6c50aecf.png"

      expect(helper.avatar_url_for(known_email)).
        to eq(known_result)
    end
  end

  context "#display_name_for" do
    it "returns the full_name for a user" do
      user = create(:user)

      expect(helper.display_name_for(user)).
        to eq(user.full_name)
    end

    it "returns the email address wen a user has no names" do
      user = create(:user, first_name: nil, last_name: nil)

      expect(helper.display_name_for(user)).
        to eq(user.email)
    end
  end
end
