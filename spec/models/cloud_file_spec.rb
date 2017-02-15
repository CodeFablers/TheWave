require 'rails_helper'

describe CloudFile do
  describe 'relations' do
    it { is_expected.to belong_to(:library) }
    it { is_expected.to belong_to(:folder) }
  end
end
