class Blog < ApplicationRecord
    belongs_to :user
    validates :blog_text, presence: :true
end
