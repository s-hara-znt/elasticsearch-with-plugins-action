require 'rails_helper'

RSpec.describe Event, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
    it "/events/:id ページを表示" do
      event = FactoryBot.create(:event)
      binding.pry
      visit event_url(event)
      expect(page).to have_selector 'h1', text: event.name
    end
end
