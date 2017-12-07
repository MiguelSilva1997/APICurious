class User < ApplicationRecord

  def self.from_omniauth(auth_info)
    where(uid: auth_info[:uid]).first_or_create do |user|
      user.provider = auth_info["provider"]
      user.uid = auth_info["uid"]
      user.name = auth_info["info"]["name"]
      user.username = auth_info["extra"]["raw_info"]["login"]
      user.token = auth_info["credentials"]["token"]
      user.profile_picture = auth_info["extra"]["raw_info"]["avatar_url"]
      user.bio = auth_info["extra"]["raw_info"]["bio"]
      user.location = auth_info["extra"]["raw_info"]["location"]
      user.email = auth_info["extra"]["raw_info"]["email"]
    end
  end
end
