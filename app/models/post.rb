class Post < ApplicationRecord
    belongs_to :category
    belong_to :user
end
