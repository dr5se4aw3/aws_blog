json.extract! aws_blog, :id, :title, :content, :created_at, :updated_at
json.url aws_blog_url(aws_blog, format: :json)
