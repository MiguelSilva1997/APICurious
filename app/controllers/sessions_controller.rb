class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    if user = User.find_by_provider_and_uid(auth["provider"], auth["uid"])
      user.update(token: auth["credentials"]["token"])
    else
      user = User.from_omniauth(auth)
    end
    session[:user_id] = user.id
    redirect_to users_path
  end
end
