json.array!(@bugs) do |bug|
  json.extract! bug, :id, :title, :description, :status, :user_id
  json.url bug_url(bug, format: :json)
end
