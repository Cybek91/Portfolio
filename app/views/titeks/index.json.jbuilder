json.array!(@titeks) do |titek|
  json.extract! titek, :id
  json.url titek_url(titek, format: :json)
end
