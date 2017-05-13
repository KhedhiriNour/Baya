class Announcement < ApplicationRecord
  has_many :announcement_images
  accepts_attachments_for :announcement_images, attachment: :photo
  attachment :image
  belongs_to :user
end
