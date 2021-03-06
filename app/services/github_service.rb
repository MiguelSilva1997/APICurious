class GithubService

  def initialize(user)
    @user = user
    @conn = Faraday.new(url:'https://api.github.com') do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end

  def all_repositories
    response = conn.get("/users/#{user.username}/repos?access_token=#{user.token}")
    data = JSON.parse(response.body, symbolize_names: true)
    create_repos(data)
  end

  def all_related_users(type)
    response = conn.get("/users/#{user.username}/#{type}?access_token=#{user.token}")
    data = JSON.parse(response.body, symbolize_names: true)
    parse_user_info(data)
  end

  def parse_user_info(data)
    data.map do |user|
      create_other_user(user)
    end
  end

  def parse_repositories(repository_array)
    repository_array.map do |repository|
      retrieve_recent_commits(repository)
    end
  end

  def extract_full_user_info(user)
    response = conn.get("/users/#{object[:login]}?access_token=#{current_user.token}")
    data = JSON.parse(response.body, symbolize_names: true)
    create_other_user(data)
  end

  def retrieve_recent_commits(repository)
    response = @conn.get("/repos/#{user.username}/#{repository.name}/stats/participation?access_token=#{user.token}")
    data = JSON.parse(response.body, symbolize_names: true)
    create_commit_objects(data, repository.name)
  end

  def create_commit_objects(data, repository)
    Commit.new(data, repository) unless data.empty? || data[:owner][-1] == 0
  end

  def create_repos(repositories)
    repositories.map do |repo|
      Repository.new(repo)
    end
  end

  def create_other_user(other_users)
    RelatedUser.new(other_users)
  end

  private

  attr_reader :user,
              :conn
end
