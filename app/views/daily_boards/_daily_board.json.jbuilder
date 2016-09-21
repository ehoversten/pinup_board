json.extract! daily_board, :id, :catagory, :title, :description, :created_at, :updated_at
json.url daily_board_url(daily_board, format: :json)