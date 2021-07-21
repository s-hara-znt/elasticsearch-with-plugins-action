require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe "delete my event" do
    # pending "add some examples (or delete) #{__FILE__}"
    before do
      @event_owner = FactoryBot.create(:user)
      @event = FactoryBot.create(:event, owner: @event_owner)
    end
    it "event" do
      TestHelper.sign_in_as @event_owner
      get root_url
      binding.pry
      find("#login").click
      # click_on "GitHubでログイン"
      # @current_user = user
      binding.pry
      expect(delete event_url(@event)).to change(Event.count).by(-1)
    end
  end
end
