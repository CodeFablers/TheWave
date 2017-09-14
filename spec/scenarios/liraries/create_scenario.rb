require 'rails_helper'

describe Libraries::CreateScenario do
  subject(:create_scenario) { Libraries::CreateScenario.new(user) }

  let(:user) { create(:user, email: 'test@spec.com') }

  it "creates user's library with the name of mail account" do
    library = create_scenario.perform

    expect(library).to be_persisted
    expect(library.owner_id).to eq(user.id)
    expect(library.name).to eq('test')
  end
end
