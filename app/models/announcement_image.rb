class AnnouncementImage < ApplicationRecord
    belongs_to :announcement
    attachment :photo
end
