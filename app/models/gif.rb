class Gif < ApplicationRecord
  include ImageUploader::Attachment(:image) # adds an `image` virtual attribute
  belongs_to :user

  acts_as_taggable_on :tags
end
