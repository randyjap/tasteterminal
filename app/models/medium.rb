class Medium < ApplicationRecord
  validates :url, :article, presence: true

  belongs_to :article
end
