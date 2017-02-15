require 'rails_helper'

describe Library do
  describe 'relations' do
    it { is_expected.to belong_to(:owner) }
    it { is_expected.to have_many(:folders) }
    it { is_expected.to have_many(:files) }
  end
end
