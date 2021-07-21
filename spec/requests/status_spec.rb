require 'rails_helper'

RSpec.describe "Statuses", type: :request do
  describe "GET /status" do
    # pending "add some examples (or delete) #{__FILE__}"
    it "responce TEST" do
      get "/status"
      expect(response).to be_successful
      expect(response.body).to eq({ status: "ok" }.to_json)
      expect(response.content_type).to eq "application/json; charset=utf-8"
    end
  end
end
