json.extract! post, :id, :title, :description, :user_hashtag, :created_at, :updated_at
json.url post_url(post, format: :json)
