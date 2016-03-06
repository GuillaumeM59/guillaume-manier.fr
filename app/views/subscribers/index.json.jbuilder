json.array!(@subscribers) do |subscriber|
  json.extract! subscriber, :id, :email, :subscribe
  json.url subscriber_url(subscriber, format: :json)
end
