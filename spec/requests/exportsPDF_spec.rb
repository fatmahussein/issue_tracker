require 'rails_helper'

RSpec.describe "Exports", type: :request do
  describe "GET /exports.pdf" do
    it "returns a PDF document" do
      get exports_path(format: :pdf)

      expect(response).to have_http_status(:success)
      expect(response.content_type).to eq("application/pdf")
      expect(response.body).not_to be_empty
    end
  end
end
