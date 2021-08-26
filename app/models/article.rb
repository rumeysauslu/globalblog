class Article < ApplicationRecord
    # validations
    validates :title, presence: true
end
