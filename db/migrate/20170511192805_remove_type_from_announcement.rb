class RemoveTypeFromAnnouncement < ActiveRecord::Migration[5.0]
  def change
    remove_column :announcements, :type, :string
  end
end
