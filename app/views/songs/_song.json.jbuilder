json.extract! song, :id, :title, :author_id, :text, :theme, :tempo, :key, :CCLISongNo, :scripture, :created_at, :updated_at
json.url song_url(song, format: :json)