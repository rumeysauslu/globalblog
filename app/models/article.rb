class Article < ApplicationRecord

  # validations
  validates :title, presence: true

  # custom callbacks
  before_save :set_link

  private

  def set_link
    self.sef_link = title.parameterize
  end
end
