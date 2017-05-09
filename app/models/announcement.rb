class Announcement < ApplicationRecord
  has_many :announcement_images
  accepts_attachments_for :announcement_images, attachment: :photo
end
