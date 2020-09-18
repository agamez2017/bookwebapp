json.extract! landing_page, :id, :title, :author, :genre, :price, :publishedDate, :created_at, :updated_at
json.url landing_page_url(landing_page, format: :json)
