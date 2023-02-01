class Article < ApplicationRecord
    validates :title, presence: true, length: { maximum: 30 }
    validates :author  , presence: true
    validates :category, presence: true
    validates :content, presence: true
    validates :published_at , presence: true
end
