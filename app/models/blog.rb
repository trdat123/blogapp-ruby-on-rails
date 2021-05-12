class Blog < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy

    validates :title, presence: :true
    validates :blog_text, presence: :true
end
