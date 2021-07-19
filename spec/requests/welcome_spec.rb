require 'rails_helper'
require 'spec_helper'

RSpec.describe "Welcomes", type: :request do
  describe "GET /index" do
    # pending "add some examples (or delete) #{__FILE__}"
    it "/ ページを表示" do
      visit root_url
      expect(page).to have_selector 'h1', text: 'イベント一覧'
    end
  end
end
