require 'rails_helper'

RSpec.describe Organization, type: :mode do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to have_many :customers }
end