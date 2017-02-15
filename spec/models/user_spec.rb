require 'rails_helper'

describe User do
  describe 'relations' do
    it { is_expected.to have_one(:own_library) }
  end
end
