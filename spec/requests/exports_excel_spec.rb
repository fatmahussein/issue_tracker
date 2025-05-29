require 'rails_helper'

RSpec.describe 'Exports', type: :request do
  describe 'GET /exports.xlsx' do
    it 'returns an Excel spreadsheet' do
      get exports_path(format: :xlsx)

      expect(response).to have_http_status(:success)
      expect(response.content_type).to include('application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')
      expect(response.body).not_to be_empty
    end
  end
end
