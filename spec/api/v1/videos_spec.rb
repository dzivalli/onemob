require 'rails_helper'

RSpec.describe 'Videos API' do
  describe 'POST #create' do
    let(:customer) { create(:customer) }

    it 'return success' do
      post "/api/v1/customers/#{customer.id}/videos", video: attributes_for(:video), format: :json

      expect(response).to be_success
    end
  end
end