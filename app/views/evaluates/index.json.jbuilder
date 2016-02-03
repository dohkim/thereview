json.array!(@evaluates) do |evaluate|
  json.extract! evaluate, :id, :rating, :comment
  json.url evaluate_url(evaluate, format: :json)
end
