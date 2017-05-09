class CreateAnnouncementImages < ActiveRecord::Migration[5.0]
  def change
    create_table :announcement_images do |t|
      t.string :photo_id
      t.integer :announcement_id

      t.timestamps
    end
  end
end
