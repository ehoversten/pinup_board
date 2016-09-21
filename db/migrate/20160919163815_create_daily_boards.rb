class CreateDailyBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_boards do |t|
      t.string :catagory
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
