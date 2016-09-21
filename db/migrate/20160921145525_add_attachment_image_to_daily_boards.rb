class AddAttachmentImageToDailyBoards < ActiveRecord::Migration
  def self.up
    change_table :daily_boards do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :daily_boards, :image
  end
end
