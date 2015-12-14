json.array!(@history_items) do |history_item|
  json.extract! history_item, :id, :observation, :animal_id, :document_id, :user_id
  json.url history_item_url(history_item, format: :json)
end
