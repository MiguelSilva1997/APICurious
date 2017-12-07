class UsersController < ApplicationController

  def index
    @repositories = GithubService.new(current_user).all_repositories
    @followers = GithubService.new(current_user).all_related_users("followers")
    @following = GithubService.new(current_user).all_related_users("following")
  end

end
