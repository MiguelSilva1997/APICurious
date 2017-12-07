require 'rails_helper'

feature "User visits profile page" do
  scenario "and can see all repositories" do
    visit '/'

    stub_hash
    stub_hash["extra"] = {"raw_info" => {"login" => "MiguelSilva1997"}}
    
    click_link "Login"

    expect(current_path).to eq('/users')

    expect(page).to have_content("MiguelSilva1997/activerecord_exploration")
    expect(page).to have_content("activerecord_exploration")
    expect(page).to have_content("Ruby")
  end
end
