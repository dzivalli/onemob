require 'rails_helper'

RSpec.describe Video, type: :model do
  it { is_expected.to validate_presence_of :subject }
  it { is_expected.to validate_presence_of :url }
  it { is_expected.to belong_to :customer }
end