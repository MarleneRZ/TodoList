json.array!(@workists) do |workist|
  json.extract! workist, :id, :task, :description
  json.url workist_url(workist, format: :json)
end
