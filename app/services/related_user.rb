class RelatedUser

  def initialize(data)
    @username = data[:login]
    @name = data[:name]
    @profile_picture = data[:avatar_url]
    @bio = data[:bio]
    @location = data[:location]
  end

end
