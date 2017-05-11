class AddImageIdToAnnouncement < ActiveRecord::Migration[5.0]
  def change
    add_column :announcements, :image_id, :string
  end
end
