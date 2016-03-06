json.array!(@projects) do |project|
  json.extract! project, :id, :name, :client, :description, :progress, :visual, :visual_cache
  json.url project_url(project, format: :json)
end
