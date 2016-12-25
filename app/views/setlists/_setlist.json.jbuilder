json.extract! setlist, :id, :title, :date, :user_id, :song_id, :medium_id, :comments, :created_at, :updated_at
json.url setlist_url(setlist, format: :json)