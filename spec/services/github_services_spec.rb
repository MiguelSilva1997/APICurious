require 'rails_helper'

describe GithubService do

 describe "repositories" do
   it "finds all repositories" do
     VCR.use_cassette("services/find_all_repos") do
       user = User.new(username: "MiguelSilva1997", token: ENV['github_token'])
       all_repos = GithubService.new(user).all_repositories

       expect(all_repos.count).to eq(30)
       expect(all_repos.first.full_name).to eq("MiguelSilva1997/activerecord_exploration")
     end
   end
 end
end
