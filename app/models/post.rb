class Post < ApplicationRecord
    belongs_to :category
    belongs_to :user
    has_attached_file :post_img, styles: { post_index: "250x150>", post_show: "400x300>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :post_img, content_type: /\Aimage\/.*\z/
  
end
