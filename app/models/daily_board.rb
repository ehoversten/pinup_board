class DailyBoard < ApplicationRecord

  validates :catagory, :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { maximum: 140 }
  validates :image, presence: true
  
  has_attached_file :image,
    styles:
      { large: "500x500>",
        medium: "300x300>",
        small: "200x200>",
        thumb: "100x100>" },
        default_url: "/images/:style/missing.png"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/



end
