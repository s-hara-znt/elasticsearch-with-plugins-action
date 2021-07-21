require 'rails_helper'

RSpec.describe Event, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
    it "owner_id equal args_id" do
      event = FactoryBot.create(:event)
      user = double(id: event.owner_id)
      binding.pry
      # allow(event).to receive(:created_by?).and_return(true)
      # expect(event).to receive(:created_by?)
      expect(event.created_by?(user)).to be_truthy
    end
    it "owner_id not equal args_id" do
      event = FactoryBot.create(:event)
      another_user = FactoryBot.create(:user)
      expect(event.created_by?(another_user)).to be_falsey
    end
    it "args in created_by? is nil" do
      event = FactoryBot.create(:event)
      expect(event.created_by?(nil)).to be_falsey
    end

    it "start_at_should_be_before_end_at validation OK" do
      start_at = rand(1..30).days.from_now
      end_at = start_at - rand(1..30).hours
      event = FactoryBot.build(:event, start_at: start_at, end_at: end_at)
      event.valid?
      expect(event.errors[:start_at]).not_to be_empty
    end
end
