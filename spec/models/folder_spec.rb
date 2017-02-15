require 'rails_helper'

describe Folder do
  describe 'relations' do
    it { is_expected.to belong_to(:library) }
    it { is_expected.to belong_to(:parent) }
    it { is_expected.to have_many(:children) }
    it { is_expected.to have_many(:files) }
  end
end
