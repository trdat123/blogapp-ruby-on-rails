json.extract! blog, :id, :blog_text, :created_at, :updated_at
json.url blog_url(blog, format: :json)
