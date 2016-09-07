class Comment < ActiveRecord::Base
  validates :text, :user, :presence => true
  belongs_to :article
end
