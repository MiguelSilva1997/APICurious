module OmniauthMacros
  def stub_hash
    {"provider"=>"github",
 "uid"=> 1111111,
 "info"=>
  {"nickname"=>"MiguelSilva1997",
   "email"=>"msilvaale08@gmail.com",
   "name"=>"Miguel Silva",
   "image"=>"https://avatars2.githubusercontent.com/u/24836529?v=4",
   "urls"=>{"GitHub"=>"https://github.com/MiguelSilva1997", "Blog"=>""}},
 "credentials"=>{"token"=>ENV['github_token'], "expires"=>false},
 "extra"=>
  {"raw_info"=>
    {"login"=>"MiguelSilva1997",
     "id"=>24836529,
     "avatar_url"=>"https://avatars2.githubusercontent.com/u/24836529?v=4",
     "gravatar_id"=>"",
     "url"=>"https://api.github.com/users/MiguelSilva1997",
     "html_url"=>"https://github.com/MiguelSilva1997",
     "followers_url"=>"https://api.github.com/users/MiguelSilva1997/followers",
     "following_url"=>
      "https://api.github.com/users/MiguelSilva1997/following{/other_user}",
     "gists_url"=>
      "https://api.github.com/users/MiguelSilva1997/gists{/gist_id}",
     "starred_url"=>
      "https://api.github.com/users/MiguelSilva1997/starred{/owner}{/repo}",
     "subscriptions_url"=>
      "https://api.github.com/users/MiguelSilva1997/subscriptions",
     "organizations_url"=>"https://api.github.com/users/MiguelSilva1997/orgs",
     "repos_url"=>"https://api.github.com/users/MiguelSilva1997/repos",
     "events_url"=>
      "https://api.github.com/users/MiguelSilva1997/events{/privacy}",
     "received_events_url"=>
      "https://api.github.com/users/MiguelSilva1997/received_events",
     "type"=>"User",
     "site_admin"=>false,
     "name"=>"Miguel Silva",
     "company"=>nil,
     "blog"=>"",
     "location"=>nil,
     "email"=>nil,
     "hireable"=>nil,
     "bio"=>nil,
     "public_repos"=>34,
     "public_gists"=>6,
     "followers"=>3,
     "following"=>1,
     "created_at"=>"2016-12-30T04:34:10Z",
     "updated_at"=>"2017-12-07T16:44:54Z"}}
   }
  end

end
