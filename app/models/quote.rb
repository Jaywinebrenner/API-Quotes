class Quote < ApplicationRecord
   validates :author, presence: true
   validates :content, presence: true
   scope :search, -> (author_parameter) { where("author like ?", "%#{author_parameter}%")}
end
