json.extract! product, :id, :name, :metal, :categories, :price, :description, :color, :created_at, :updated_at
json.url product_url(product, format: :json)
