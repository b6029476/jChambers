json.extract! review, :id, :author, :rating, :reviewtext, :reviewdate, :userid, :image_file_path, :product_id, :created_at, :updated_at
json.url review_url(review, format: :json)
