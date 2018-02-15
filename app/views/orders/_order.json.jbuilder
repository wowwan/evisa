json.extract! order, :id, :visa, :entry_date, :fast_track, :email, :name, :phone, :speed, :comment, :QTY, :amount, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
