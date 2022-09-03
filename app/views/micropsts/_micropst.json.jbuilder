json.extract! micropst, :id, :content, :user_id, :created_at, :updated_at
json.url micropst_url(micropst, format: :json)
