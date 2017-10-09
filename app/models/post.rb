class Post < ApplicationRecord
    belongs_to :category
    belongs_to :user
    has_attached_file :post_img, styles: { post_index: "400x300>", post_show: "800x600>" }, default_url: "/images/post_index/missing.png"
    validates_attachment_content_type :post_img, content_type: /\Aimage\/.*\z/
  
end
