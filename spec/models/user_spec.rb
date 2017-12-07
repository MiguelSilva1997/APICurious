require 'rails_helper'

RSpec.describe User, type: :model do
  it "creates or updates itself from an oauth hash" do
    auth = stub_hash

    User.from_omniauth(auth)
    new_user = User.first

    expect(new_user.provider).to eq("github")
    expect(new_user.uid).to eq("1111111")
    expect(new_user.name).to eq("Miguel Silva")
  end
end
