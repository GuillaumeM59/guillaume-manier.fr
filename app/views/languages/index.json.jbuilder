json.array!(@languages) do |language|
  json.extract! language, :id, :name, :description, :progress, :logolang, :logolang_cache
  json.url language_url(language, format: :json)
end
