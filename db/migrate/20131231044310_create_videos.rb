class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :vimeoid
      t.string :title
      t.text :description
      t.string :duration
      t.text :visualization

      t.timestamps
    end
  end
end
