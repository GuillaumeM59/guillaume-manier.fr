json.array!(@friends) do |friend|
  json.extract! friend, :id, :name, :url, :logobrand, :logobrand_cache
  json.url friend_url(friend, format: :json)
end
