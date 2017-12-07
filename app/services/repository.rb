class Repository
  attr_reader :name,
              :full_name,
              :updated_at,
              :stargazers_count,
              :watchers_count,
              :language
  def initialize(data = {})
    @name = data[:name]
    @full_name = data[:full_name]
    @updated_at = data[:updated_at]
    @stargazers_count = data[:stargazers_count]
    @watchers_count = data[:watchers_count]
    @language = data[:language]
  end
end
