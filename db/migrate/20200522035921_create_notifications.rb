class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.string :title
      t.string :content
      t.date :sent_at
      t.timestamps
    end
  end
end
